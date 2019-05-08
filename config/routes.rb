Rails.application.routes.draw do
  resources :posts
  resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :login, only: [:new, :create]
  get "login", to: "login#new", as: "login"
  delete "logout", to: "login#destroy", as: "log_out"
end
