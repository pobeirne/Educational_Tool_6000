class SessionsController < Devise::SessionsController
  protect_from_forgery with: :exception  
  def after_sign_in_path_for(user)
    root_path
  end
  
  def after_sign_out_path_for(user)
    root_path
  end
end
