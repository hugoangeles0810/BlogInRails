Rails.application.routes.draw do
  resources :posts
  root 'posts#index'

  put 'posts/:id/like', to: 'posts#like_to_post', as: 'like'
end
