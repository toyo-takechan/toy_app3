Rails.application.routes.draw do
  
  # root to: 'users#index'
  # root to: 'posts#index'
  root to: 'home#index'
  resources :posts
  resources :users
  get 'robots/robot1'
  get 'robots/robot2'
  get 'robots/robot3'
  get 'robots/robot4'
end
