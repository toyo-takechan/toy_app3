Rails.application.routes.draw do
  get 'robots/robot1'
  get 'robots/robot2'
  get 'robots/robot3'
  get 'robots/robot4'
  root to: 'posts#index'
  # root to: 'home#index'
  resources :posts
end
