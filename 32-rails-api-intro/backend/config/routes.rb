Rails.application.routes.draw do
  resources :animals, only: [:index, :show, :update, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
