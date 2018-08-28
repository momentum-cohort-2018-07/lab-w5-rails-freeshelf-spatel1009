Rails.application.routes.draw do
  
  get 'users/new'
  get 'welcome/index'

  resources :books
  resources :users

  root 'welcome#index'
end
