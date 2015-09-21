Rails.application.routes.draw do

  root :to => "users#index"

  get "/profile", to: "users#show"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  resources :users, only: [:new, :index, :create, :show] do
    resources :ideas
  end

end
