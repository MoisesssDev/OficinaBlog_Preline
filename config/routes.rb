Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :articles, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
end
