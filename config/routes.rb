Rails.application.routes.draw do
  devise_for :users
  get 'users' => 'users#index'
  get 'items' => 'items#new'
end
