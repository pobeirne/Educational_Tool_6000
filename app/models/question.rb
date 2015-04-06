class Question < ActiveRecord::Base
  has_one :category
  has_one :level
  has_many :question_answers
  has_many :answers, :through => :question_answers
  has_many :quiz_questions
  has_many :quizs, :through => :quiz_questions
end
