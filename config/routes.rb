Rails.application.routes.draw do
  root to: "main#index"

  resources :activities do
    resources :entries, only: :new
  end
  resources :entries
  resources :user
end
