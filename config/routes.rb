Rails.application.routes.draw do
  get 'git/add'
  get 'git/.'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
