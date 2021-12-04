Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts, only: [ :new, :create ]
  resources :projects, only: [ :show]
  # get "/", to: "contacts#new"
  # post "/", to: "contacts#create"
end
