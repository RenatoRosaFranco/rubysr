# frozen_string_literal: true
Rails.application.routes.draw do
  # Dashboard
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  # Authentication
  devise_for :users
 
  # Applications
  root to: 'home#index'
  resources :members, only: [:create]
  resources :about, only: [:index]
end
