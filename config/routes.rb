Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
