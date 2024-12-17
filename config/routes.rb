Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :articles, only: [ :show, :new, :create, :edit, :update, :destroy ]
end
