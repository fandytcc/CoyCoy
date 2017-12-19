Rails.application.routes.draw do
  devise_for :users
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :cart
end
