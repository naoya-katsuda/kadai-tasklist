Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  
  resources :tasks
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  
  resources :tasks, only: [:index, :new, :update, :destroy]
end
