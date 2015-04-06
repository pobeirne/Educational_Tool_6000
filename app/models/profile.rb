class Profile < ActiveRecord::Base   
  validates :user_name, presence: true
  validates :description, presence: true
  validates :avatar_url, presence: true
  validates :college_name, presence: true
  validates :course_name, presence: true
  validates :year, presence: true   
  belongs_to :user
  has_one :level  
end
