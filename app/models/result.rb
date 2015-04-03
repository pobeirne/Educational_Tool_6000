class Result < ActiveRecord::Base
    
    paginates_per 5    
    belongs_to :user
    belongs_to :quiz
end
