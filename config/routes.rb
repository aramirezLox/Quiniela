Rails.application.routes.draw do
  resources :predictions
  devise_for :users
  resources :matches
  resources :clubs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'matches#index'

  resources :users do
    resources :predictions
  end
end
