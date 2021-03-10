Rails.application.routes.draw do
  root to: 'posts#index'
  # root to: 'home#index'
  resources :posts
end
