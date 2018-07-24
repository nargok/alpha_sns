Rails.application.routes.draw do
  root 'statuses#index'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  get '/users/:id/password_edit', to: 'users#password_edit', as: 'password_change'
  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :statuses, only: [:index, :create, :show] do
    resources :comments, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
