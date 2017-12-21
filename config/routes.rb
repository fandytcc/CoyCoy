Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :cart
  resources :products
end
