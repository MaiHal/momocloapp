Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'top#index'

  	resources :members do 
  		get 'index'
  		get 'show'
  	end

  	resources :users do
  		get 'index'
  		get 'show' 
  	end
end
