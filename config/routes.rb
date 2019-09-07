Rails.application.routes.draw do
  root 'recipes#index'
  resource :recipes
end
