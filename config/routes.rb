Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :users, only: [:show, :update]
  resources :tweets do
  end
end
