class Question < ActiveRecord::Base  
  has_one :category
  has_one :level  
  has_and_belongs_to_many :quizzes
end
