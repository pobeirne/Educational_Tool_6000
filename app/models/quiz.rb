class Quiz < ActiveRecord::Base  
  has_one :user
  has_one :category
  has_one :level  
  has_and_belongs_to_many :questions 
end
