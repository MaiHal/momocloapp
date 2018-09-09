Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "momocloapp" => "top#index"
  get "momocloapp/members" => "members#index" 
  get "momocloapp/members/:id" => "members#show", as: 'momocloapp/member'
  get "momocloapp/user" => "users#index"
  post "momocloapp/user" => "users#create"
  get "momocloapp/user/new" => "users#new"
  get "momocloapp/discography" => "discography#index"
  get "momocloapp/comments" => "comments#index"
  post "momocloapp/comments" => "comments#create"
  get "momocloapp/comments/:id" => "comments#show", as: 'momocloapp/comment'
  get "momocloapp/comment/new" => "comments#new"
  post "momocloapp/comment/new" => "comments#create"
end