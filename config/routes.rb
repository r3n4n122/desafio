Rails.application.routes.draw do
  root to: "municipes#index"
  resources :municipes, only: [:index, :new, :create, :update, :show]
end
