Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #USER Routes
  get "/users" => "users#index"  #admin only
  get "/users/:id" => "users#show" #user only
  post "/users"   => "users#create" #new sign in only
  patch "/users/:id" => "users#update"  # user only
  delete "/users/:id" => "users#destroy"  # user/admin only

  #sessions Routes
  post "/sessions" => "sessions#create"

  #Genres Routes
  get "/genres"  => "genres#index"
  get "/genres/:id"  => "genres#show"
  post "/genres", controller: "genres", action: "create"
  
  #Posts Routes
  get "/posts"  => "genres#index"
  get "/posts/:id" => "genres#show"
  post "/posts"   => "posts#create"
  patch "/posts/:id" => "posts#update"
  delete  "/posts/:id"  =>  "posts#destroy"
end
