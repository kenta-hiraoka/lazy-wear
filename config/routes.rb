Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'posts' => 'posts#index'
end
