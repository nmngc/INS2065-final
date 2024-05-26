require 'sidekiq/web'

Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #resources :location
  resources :subjects
  resources :customers
  resources :movies
  resources :payment_methods
  resources :payments
  resources :locations
  resources :cinema_halls
  resources :showtimes
  resources :cinema_seats
  resources :tickets
  

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  get 'home', to: 'home#index'
  #get 'bookings', to: 'bookings#index'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
