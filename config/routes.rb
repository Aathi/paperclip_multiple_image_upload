Rails.application.routes.draw do
  resources :images
  resources :images
  resources :posts


  root 'posts#index'

end
