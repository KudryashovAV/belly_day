Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :accounts, only: [:new, :create, :edit, :update, :show]
  resources :meals, only: [:index]
  resources :products do
    resources :meals, only: [:new, :create]
  end
end
