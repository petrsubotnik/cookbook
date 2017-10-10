Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "food_categories#index"
  resources :food_categories
  resources :recipes
  resources :ingredients, only: [:new]
  post "/ingredients/new", to: "ingredients#create"
  resources :directions, only: [:new]
  post "/directions/new", to: "directions#create"

end
