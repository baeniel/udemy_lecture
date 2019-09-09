Rails.application.routes.draw do

  get 'chefs/index'
  get 'chefs/show'
  devise_for :chefs
  root 'chefs#index'
  resources :recipes do
    resources :comments, only: [:create]
  end
  resources :chefs
  resources :ingredients

  mount ActionCable.server => '/cable'
end
