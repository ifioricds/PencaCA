Rails.application.routes.draw do
  root 'matches#index'
  resources :matches, only: [:show, :index]
  devise_for :users
  namespace :admin do
      resources :countries
      resources :matches
      root to: "matches#index"
  end
end
