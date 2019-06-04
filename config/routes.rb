Rails.application.routes.draw do
  get 'users' => 'users#index'
  get 'items' => 'items#new'
end
