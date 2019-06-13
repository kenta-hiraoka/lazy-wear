Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  get 'users' => 'users#index'
  get 'items' => 'items#new'
end
