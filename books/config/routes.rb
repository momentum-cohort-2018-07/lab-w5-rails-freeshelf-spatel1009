Rails.application.routes.draw do
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'users/new'
  get 'welcome/index'
  

  resources :books
  resources :users

  root 'welcome#index'
end
