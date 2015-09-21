Rails.application.routes.draw do

  root :to => "users#index"

  get "/profile", to: "users#show"

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

end
