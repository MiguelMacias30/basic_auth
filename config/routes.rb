Rails.application.routes.draw do
  resources :posts
  
  get 'users/sign_in', to: 'sessions#new'
  get 'users/sign_up', to: 'users#new'
  resources :sessions, only: [:create, :destroy]
  post 'users', to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
