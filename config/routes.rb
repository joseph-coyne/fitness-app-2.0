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
   	
    get "/workouts" => "workouts#index"
    get "workouts/daily" => "workouts#show"
    get "/user_workouts/:id" => "user_workouts#show"
    post "/user_workouts" => "user_workouts#create"

    get "/meals" => "meals#index"
    get "/meals/new" => "meals#new"
    get "/meals/:id" => "meals#show"
    get "/meals/:id/edit" => "meals#edit"
  end
end
