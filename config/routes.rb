Rails.application.routes.draw do
  resources :task_labors
  resources :task_administratives
  resources :professions
  resources :clients
  resources :tasks
  resources :labor_processes
  resources :administrative_processes
  devise_for :users
  get 'home/index'
  root 'home#index'

  namespace :user do
    resources :problems
    resources :services
    devise_scope :user do
      post "/sign_in", :to => 'sessions#create'
      post "/sign_up", :to => 'registrations#create'
      delete "/sign_out", :to => 'sessions#destroy'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
