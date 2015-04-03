class OverviewController < ApplicationController
  before_filter :authenticate_user!

  def user
    
    #check if profile exists 
    if Profile.exists?(:user_id => current_user.id)
      #profile query 
      @profile = Profile.find_by_user_id(current_user.id)  
      
      #level query
      @level = Level.find(@profile.level_id) 
      
      #count user quizzes
      @quiz_count = Quiz.where(:user_id => current_user.id , :is_complete => true, :level_id => @profile.level_id).count
      
      #calculate avg grade
      @average  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = #{@profile.level_id}" ).average("results.grade")
      
      #calculate avg duration      
      @dur_arr  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = #{@profile.level_id}" ).select("results.duration")
              
      if @dur_arr.size > 0
          @dur = Array.[]
          @dur_arr.each_with_index do |a , index|
          @dur[index] = @dur_arr[index].duration
          end
          t = Quiztimeutil.new(1)
          @avg_duration  = t.avg_of_times(@dur)
      else
      @avg_duration = 0
      end    
                  
      
      #get users highest grade
      @highest_result = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = #{@profile.level_id}" ).order("grade DESC").first
      
      #get users lowest grade
      @lowest_result = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = #{@profile.level_id}" ).order("grade ASC").first      
    else
      #redirect user to make a new profile
      redirect_to new_profile_path()
    end
  end

  def quiz
    
    #user by id query
    @user = User.find(current_user.id)
    
    #quizzes by user id query
    @quizs = Quiz.where(:user_id => @user.id).order(:id).page params[:page]
    
    #quizzes count query
    @quiz_count = Quiz.where(:user_id =>  @user.id).count
    @quiz_count_completed = Quiz.where(:user_id =>  @user.id, :is_complete => true).count
    @quiz_count_not_completed = Quiz.where(:user_id =>  @user.id, :is_complete => false).count
    
  end

  def result
    
    #user by id query
    @user = User.find(current_user.id)
    
    #profile by user id query
    @profile = Profile.find_by_user_id(@user.id)
   
    #all results by user id query
    @results = Result.where(:user_id => @user.id).order(:id).page params[:page]
      
      
   
    #beginer stats queries
    @count_beginner  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 1" ).count
    @average_beginner  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 1" ).average("results.grade")
    @dur_arr_beginner = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 1" ).select("results.duration")
    
    if @dur_arr_beginner.size > 0
          @dur = Array.[]
          @dur_arr_beginner.each_with_index do |a , index|
          @dur[index] = @dur_arr_beginner[index].duration
          end
          t = Quiztimeutil.new(1)
          @avg_duration_beginner  = t.avg_of_times(@dur)
      else
      @avg_duration_beginner = 0
    end    
        
    @highest_result = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 1" ).order("results.grade DESC").first
    @lowest_result = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 1" ).order("results.grade ASC").first
    
    
        
    #intermediate stats queries
    @count_intermediate  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 2" ).count
    @average_intermediate  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 2" ).average("results.grade")
    @dur_arr_intermediate  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 2" ).select("results.duration")
    
    if @dur_arr_intermediate.size > 0
          @dur = Array.[]
          @dur_arr_intermediate.each_with_index do |a , index|
          @dur[index] = @dur_arr_intermediate[index].duration
          end
          t = Quiztimeutil.new(2)
          @avg_duration_intermediate  = t.avg_of_times(@dur)
      else
      @avg_duration_intermediate = 0
    end
    
    @highest_intermediate = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 2" ).order("results.grade DESC").first
    @lowest_intermediate = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 2" ).order("results.grade ASC").first
   
    
    
    #advanced stats queries
    @count_advanced  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 3" ).count
    @average_advanced  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 3" ).average("results.grade")
    @dur_arr_advanced  = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 3" ).select("results.duration")
    
    if @dur_arr_advanced.size > 0
          @dur = Array.[]
          @dur_arr_advanced.each_with_index do |a , index|
          @dur[index] = @dur_arr_advanced[index].duration
          end
          t = Quiztimeutil.new(3)
          @avg_duration_advanced  = t.avg_of_times(@dur)
      else
      @avg_duration_advanced = 0
    end    

    @highest_advanced = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 3" ).order("results.grade DESC").first
    @lowest_advanced = Result.joins(:quiz).where("results.user_id = quizzes.user_id and quizzes.level_id = 3" ).order("results.grade ASC").first
   
   
    #overall stats queries
    #@average = Result.where(:user_id => @user.id).average("grade")
    #@highest_result = Result.where(:user_id => @user.id).order("grade DESC").first
    #@lowest_result = Result.where(:user_id => @user.id).order("grade ASC").first
    
  end
  
end
