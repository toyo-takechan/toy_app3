Rails.application.routes.draw do
  root to: 'home#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :posts
   resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: :edit
  resources :password_resets, only: [:new, :create, :edit, :update]
  get 'robots/robot1'
  get 'robots/robot2'
  get 'robots/robot3'
  get 'robots/robot4'
end
