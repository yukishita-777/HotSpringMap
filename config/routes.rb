# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'maps#index'
  resources :maps
end
