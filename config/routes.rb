Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "restaurants#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
  resources :reviews, only: [:create]
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
end
end
