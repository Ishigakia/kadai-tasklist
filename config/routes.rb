Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  root to: 'tasks#index'
  
   get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  
  get 'signup' , to: 'users#new'
  resources :tasks
  resources :users,only:[:new,:create]
end
