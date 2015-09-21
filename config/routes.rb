Rails.application.routes.draw do

  root :to => "users#index"

  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  get "/logout", to: "users#new"

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

end
