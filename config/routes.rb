Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  	get "/users/me" => "users#profile"
  	resources :users
  	resources :trainers
  	resources :appointments
  	
   	post "/user_sessions" => "sessions#user_create"
   	post "/trainer_sessions" => "sessions#trainer_create"

   	get "/tags" => "tags#index"
   	
  end
end
