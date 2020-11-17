Rails.application.routes.draw do
  # CREATE - ask for empty form
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # CREATE - receive filled-in form
  post 'restaurants', to: 'restaurants#create'

  # READ - all restaurants
  get 'restaurants', to: 'restaurants#index'
  # READ - one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # UPDATE - get filled-in form
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # UPDATE - receive updated form
  patch 'restaurants/:id', to: 'restaurants#update'

  # DELETE a single record
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants, only: [:new, :create]
end
