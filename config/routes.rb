Rails.application.routes.draw do
  resources :visits, only: [:new, :create, :destroy]
  resources :locations
  resources :users
  
end
