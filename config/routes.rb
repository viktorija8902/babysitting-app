Rails.application.routes.draw do
  get 'family-profile', to: 'family_profile#index'
  get 'babysitter-profile', to: 'babysitter_profile#index'

  get 'sessions/new'

  get 'register', to: 'user#index'
  post 'register', to: 'user#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
