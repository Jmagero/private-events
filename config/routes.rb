Rails.application.routes.draw do
  resources :users 
  resources :events
  resources :sessions
  resources :event_managers

  root 'events#index'
end
