Rails.application.routes.draw do
  
  
  root "parkings#index"
  resources :slots
  resources :parkings
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
