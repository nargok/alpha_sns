Rails.application.routes.draw do
  root 'statuses#index'

  get 'signup', to: 'users#new'
  get 'search', to: 'users#search'
  get 'login', to: 'sessions#new'
  get '/users/:id/password_edit', to: 'users#password_edit', as: 'password_change'
  get 'like', to: 'statuses#like'
  get 'friend_request', to: 'users#friend_request'
  get 'friend_request_approval', to: 'friendships#approval_list'
  get 'approve', to: 'friendships#approve'
  get 'reject', to: 'friendships#reject'

  resources :users
  resource :session, only: [:new, :create, :destroy]
  resources :statuses, only: [:index, :create, :show] do
    resources :comments, only: [:create]
  end
  resources :friendships, only: [:index, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
