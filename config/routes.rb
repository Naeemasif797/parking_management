Rails.application.routes.draw do
  
  
  root "parkings#index"
  resources :slots
  resources :parkings
  devise_for :users

 get 'bookings', to: 'bookings#index'
 get '/mybookings/:id', to: 'bookings#my_bookings', as: 'mybookings'
 get '/bookings/new/:id', to: 'bookings#new', as: 'newbooking'
 post 'bookings', to: 'bookings#create'
end
