Rails.application.routes.draw do
  root to: "main#index"
  resources :activities
  resources :entries
  resources :user
end
