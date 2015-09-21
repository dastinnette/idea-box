Rails.application.routes.draw do

  root :to => "users#index"

  get "/profile", to: "users#show"
  get "/login", to: "sessions#new"
  
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

end
