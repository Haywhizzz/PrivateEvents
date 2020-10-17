# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'events#index'
  resources :events do
    resources :registrations
  end
  resources :users
  resources :sessions
end
