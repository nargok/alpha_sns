Rails.application.routes.draw do
  root 'statuses#index'
  get 'statuses', to: 'statuses#index'

  resources :users
  get 'signup', to: 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
