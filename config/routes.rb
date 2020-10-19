# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'events#index'
  post 'register', to: 'registrations#create'
  get 'registers', to: 'registrations#index'
  resources :registrations
  resources :events do
    resources :registrations
  end
  resources :users
  resources :sessions
end
