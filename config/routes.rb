Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "momocloapp" => "top#index"
  get "momocloapp/members" => "members#index" 
  get "momocloapp/member/:id" => "members#show"
  get "momocloapp/user" => "users#index"
  get "momocloapp/user/new" => "users#new"
  get "momocloapp/discography" => "discography#index"
  get "momocloapp/comments" => "comments#index"
end