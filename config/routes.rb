Rails.application.routes.draw do
  root 'statuses#index'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :statuses, only: [:index, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
