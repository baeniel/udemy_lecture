Rails.application.routes.draw do

  root 'chefs#index'
  resources :recipes do
    resources :comments, only: [:create]
  end
  resources :chefs
  resources :ingredients
end
