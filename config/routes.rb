Rails.application.routes.draw do
  resources :users 
  resources :events
  resources :sessions
end
