Rails.application.routes.draw do
  root to: 'orders#index'
  devise_for :users

  resource :order
  resource :pizza_type
  namespace :orders do
    resources :calculate_costs, only: :create
  end
end
