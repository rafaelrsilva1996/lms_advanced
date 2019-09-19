Rails.application.routes.draw do
  resources :tasks
  resources :labor_processes
  resources :administrative_processes
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
