Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    get "/workouts" => "workouts#index"

    get "workouts/daily" => "workouts#show"

    get "/user_workouts/:id" => "user_workouts#show"

    post "/user_workouts" => "user_workouts#create"

    #meals

    get "/meals" => "meals#index"
    get "/meals/new" => "meals#new"
    get "/meals/:id" => "meals#show"
    get "/meals/:id/edit" => "meals#edit"

    
end
end