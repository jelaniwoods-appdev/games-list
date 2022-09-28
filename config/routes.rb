# frozen_string_literal: true

Rails.application.routes.draw do
  resources :games do
    member do
      patch :move_up
      patch :move_down
    end
  end
  resources :lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'
end
