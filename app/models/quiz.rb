class Quiz < ActiveRecord::Base  
  paginates_per 5 
  
  has_one :user
  has_one :level  
  
  has_many :quiz_questions
  has_many :questions, :through => :quiz_questions

end
