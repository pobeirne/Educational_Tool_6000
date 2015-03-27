class OverviewController < ApplicationController
  
  before_filter :authenticate_user!
  layout 'int_site'
 
  def user
    if Profile.exists?(:user_id => current_user.id)
        @profile = Profile.find_by_user_id(current_user.id)  
        @category = Category.where({ :id => 2 })     
    else
        redirect_to new_profile_path
    end        
  end

  def quiz
  end

  def result
  end
    
end
