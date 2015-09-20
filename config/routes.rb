Rails.application.routes.draw do

  # root :to => ""

  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  resources :users, only: [:create, :edit, :update, :show, :destroy]

end
