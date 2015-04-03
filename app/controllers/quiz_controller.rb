class QuizController < ApplicationController
  before_filter :authenticate_user!
  #require "Gradereval"
  #generate a new quiz
  def create

    #user query
    @user = User.find(current_user.id)

    #profile query
    @profile = Profile.find_by_user_id(@user.id)

    #new quiz object
    @quiz = Quiz.new

    @level_name = Level.find(@profile.level_id)

    #check quiz type
    if params[:test_type][0] == '1'
      @quiz.title = 'Assesment'
      @quiz.description = 'This is a quiz for '+@profile.user_name.to_s+' at all levels'
      @quiz.is_attempted =false
      @quiz.is_complete = false
      @quiz.num_of_questions = 10
      @quiz.user_id = @user.id
      @quiz.level_id = 0
      @quiz.save

      @questions = Question.limit(10).order("RANDOM()")
    @quiz.questions << @questions

    else
      @quiz.title = 'Quiz '+ @level_name.name.to_s
      @quiz.description = 'This is a quiz for '+@profile.user_name.to_s+' at '+ @level_name.name.to_s+' level'
      @quiz.is_attempted =false
      @quiz.is_complete = false
      @quiz.num_of_questions = 10
      @quiz.user_id = @user.id
      @quiz.level_id = @profile.level_id
      @quiz.save

      @questions = Question.where(:level_id => @quiz.level_id).limit(10).order("RANDOM()")
    @quiz.questions << @questions
    end

  #quiz insert query
  #@quiz = Quiz.new(title: 'Testing',description: 'Test description', is_attempted: false ,
  #  is_complete: false, num_of_questions: 10 ,user_id: @user.id,level_id: @profile.level_id)
  #@quiz.save

  #questions query
  #@questions = Question.limit(10).order("RANDOM()")

  #assign questions to quiz manay to many
  #@quiz.questions << @questions

  end

  def cancel
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to overview_quiz_path, notice: 'Quiz was successfully canceled.' }
      format.json { head :no_content }
    end
  end

  def start
    @quiz = Quiz.find(params[:id])
    @quiz.is_attempted = true
    @quiz.start_at = DateTime.now
    @quiz.save
  end

  def finish

    @quiz = Quiz.find(params[:id])    
    @quiz.end_at = DateTime.now
    @quiz.is_complete  = true
    @quiz.save
    
    
    @user = User.find(current_user.id)
    @profile = Profile.find_by_user_id(@user.id)

    @arr = params[:value].first(10)
    @nums = Array.[]
    @arr.each_with_index do |a , index|
      @nums[index] = @arr[index][1]
    end

    @answers = Answer.where(:id => @nums.split(','))
    @correct= @answers.where(:id => @nums.split(','), :is_correct =>  true)
    @incorrect= @answers.where(:id => @nums.split(','), :is_correct =>  false)

    mygrader = Gradereval.new(@user.id, @quiz.level_id)
    @grade = mygrader.getGrade(@quiz.num_of_questions, @correct.size)

    if (@incorrect.size.to_i + @correct.size.to_i) < @quiz.num_of_questions.to_i
      @incorrect = (@quiz.num_of_questions.to_i - @correct.size.to_i)
    else
      @incorrect = @incorrect.size
    end
    
    t = QuizDuration.new(@user.id)
    @duration =  t.getDurationInMinutes(@quiz.start_at,@quiz.end_at)
    
    @result = Result.new(
                        num_correct: @correct.size,
                        num_incorrect: @incorrect,
                        grade: @grade,
                        duration: @duration.to_s,
                        user_id: @user.id,
                        quiz_id: @quiz.id
                        )
    @result.save



    #evaluate user every quiz
    mygrader = Gradereval.new(@user.id, @quiz.level_id)
    @new_level = mygrader.evalByGrade(@result.grade)
    @profile.level_id = @new_level
    @profile.save

    #userid ?
    #@quiz_total = Result.joins(:quiz).where("results.quiz_id = quizzes.id and quizzes.level_id = #{@profile.level_id}" )
    # .order("results.id DESC").limit(5)

    #@average = Result.joins(:quiz).where("results.quiz_id = quizzes.id and quizzes.level_id = #{@profile.level_id}" )
    # .order("results.id DESC").limit(5).average("results.grade")

    #mygrader = Grader.new(@user.id, @profile.level_id)
    #@new_level = mygrader.changeUserLevel(@average,@quiz_total.size)
    #@profile.level_id = @new_level
    #@profile.save

    respond_to do |format|
      if @result.save
        format.html { redirect_to quiz_result_path(:id => @result.id), notice: 'Result was successfully created.'}
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end

  end

  def result
    @result = Result.find(params[:id])
    @profile = Profile.find_by_user_id(current_user.id)
  end

end
