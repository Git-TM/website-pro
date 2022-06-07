Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [ :new, :create ]
  resources :projects, only: [ :index, :show]
  # get "/", to: "contacts#new"
  # post "/", to: "contacts#create"
end
