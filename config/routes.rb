# frozen_string_literal: true

Rails.application.routes.draw do
  root 'order#root'

  get 'orders', to: 'order#index'
  get 'pizzas', to: 'order#pizzas'
  post 'orders', to: 'order#create'
  get 'orders/:id', to: 'order#show'
end
