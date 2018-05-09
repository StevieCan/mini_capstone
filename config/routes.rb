Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get 'first_shoe_url' => 'products#first_shoe_action'
    get 'all_shoes_url' => 'products#all_shoes_action'
  end
 end
