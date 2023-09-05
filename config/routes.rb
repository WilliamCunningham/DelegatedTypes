Rails.application.routes.draw do
  root "articles#index"
  resources :activities
  resources :entries
end
