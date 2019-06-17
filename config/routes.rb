Rails.application.routes.draw do
  devise_for :users
  resources :items,only: [:new, :create]
  root 'users#index'
  get 'users', to: 'users#index'
  get 'items/new', to: 'items#new'
  get 'users/mypage', to: 'users#mypage'
end
