Rails.application.routes.draw do
  resources :users
  resources :parties
  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "sessions", to: "sessions#destroy"
  # post "/sessions", to: "sessions#create", as: "sessions"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
