Rails.application.routes.draw do
  root 'matches#index'
  resources :matches, only: [:show, :index]
end
