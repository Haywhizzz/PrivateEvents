Rails.application.routes.draw do
  resources :registrations
  root to: 'events#index'
  resources :events
  resources :users
  resources :sessions

end
