Rails.application.routes.draw do

  devise_for :users
  resources :carts
  root to: 'products#index'
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products
  resources :list_items
end
