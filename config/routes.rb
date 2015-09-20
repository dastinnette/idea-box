Rails.application.routes.draw do

  root :to => "users#new"

  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  get "/logout", to: "users#new"
  resources :users, only: [:create, :edit, :update, :show, :destroy]

end
