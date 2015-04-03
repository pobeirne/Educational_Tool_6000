class QuizForm  < ActiveRecord::Base
  include ActiveModel::Validations
  
  validates :value [], presence: true  
end