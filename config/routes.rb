Rails.application.routes.draw do  
 
  get 'tracking_info/index'
  
  root to: 'tracking_info#login'
  resources :dashboard, :only => :index
  
 

  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
  	root 'login#index'
	  resources :dashboard, :only => :index
	end

end
