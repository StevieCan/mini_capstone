Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
    get '/products/:id' => 'products#show'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
  end
 end
