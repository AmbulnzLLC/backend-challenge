Rails.application.routes.draw do

  root "orders#index"
  devise_for :users
  resources :orders
  resources :pizza_types
end
