# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'maps/index'
  root to: 'maps#index'
  resources :maps, only: [:index]
end
