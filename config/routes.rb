Rails.application.routes.draw do
  devise_for :users
  resources :items,only: [:new, :create]
  root 'users#index'
  get 'users', to: 'users#index'
  get 'users/mypage', to: 'users#mypage'
  get 'items/new', to: 'items#new'
  post 'items', to: 'items#create'
end
