Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [ :new, :create ]
  resources :projects
  get '/savecv', to: 'pages#savecv'
end
