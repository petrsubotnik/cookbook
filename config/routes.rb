Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "food_categories#index"
  resources :food_categories
  post "/recipes/search", to: "recipes#search"
  get "/recipes/search", to: "recipes#results", as: "recipes_results"
  resources :recipes
  resources :ingredients, only: [:new]
  post "/ingredients/new", to: "ingredients#create"
  resources :directions, only: [:new]
  post "/directions/new", to: "directions#create"

end
