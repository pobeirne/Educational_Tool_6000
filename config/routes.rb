Rails.application.routes.draw do
  
 
  
  devise_for :users
  
  authenticated :user do
    
    resources :profiles
    get 'quiz/create'
    get 'quiz/cancel'
    get 'quiz/start'
    post'quiz/finish'  
    get 'quiz/result'     
    get 'overview/quiz'
    get 'overview/result'        
    root :to => "overview#user", :as => "authenticated_root"
  end

  root 'welcome#index'
end
