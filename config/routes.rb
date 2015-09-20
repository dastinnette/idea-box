Rails.application.routes.draw do
  get "/signup", to: "users#new"
  resources :users, only: [:create]
  get "/profile", to: "users#show"
end
