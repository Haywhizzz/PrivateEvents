Rails.application.routes.draw do
  root to: 'events#new'
  resources :events
  resources :users
  resources :sessions

end
