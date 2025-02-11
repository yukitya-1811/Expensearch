Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'pages/test', to: 'pages#test'
  get 'pages/print', to: 'pages#print'
  resources :transactions, only: [:new, :create, :index]
end
