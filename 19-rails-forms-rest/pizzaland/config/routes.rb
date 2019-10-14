Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pizzas

  # get "/pizzas/:id", to: "pizzas#show", as: "pizza"
end
