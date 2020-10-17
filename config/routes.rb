Rails.application.routes.draw do
  resources :trials
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'login#new'
  get '/signup', to: 'signup#new'
  get '/static_pages', to: 'static_pages#index'

  resources :tasks, only: [:index]

  get '/admin/login', to: 'admin/login#new'
  namespace :admin do
    resources :users, only: [:index]
    resources :login, only: [:new]
  end

end
