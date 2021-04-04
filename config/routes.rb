Rails.application.routes.draw do
  
  get 'password_resets/new'
  get 'password_resets/edit'
  # root to: 'users#index'
  # root to: 'posts#index'
  root to: 'home#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :posts
  resources :users
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
  get 'robots/robot1'
  get 'robots/robot2'
  get 'robots/robot3'
  get 'robots/robot4'
end
