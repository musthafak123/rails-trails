Rails.application.routes.draw do
  resources :laptops
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "laptop" ,to:"laptop#index"
  get "mobile", to:"mobile#index"
  get "about", to:"about#index"
  root to:"home#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
