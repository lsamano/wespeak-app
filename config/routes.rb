Rails.application.routes.draw do
  resources :comments, only: [:index, :create, :update, :destroy]
  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  resources :login, only: [:new, :create]
  get "login", to: "login#new", as: "login"
  delete "logout", to: "login#destroy", as: "log_out"

  get "", to: "application#home", as: "home"
end
