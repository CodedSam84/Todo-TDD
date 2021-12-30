Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "todoos#index"
  resources :todoos, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create]
end
