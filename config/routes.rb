Rails.application.routes.draw do
  resources :bookings
  resources :cars
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'odyssey#index'
end
