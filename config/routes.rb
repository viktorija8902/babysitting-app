Rails.application.routes.draw do
  get 'register', to: 'user#index'
  post 'register', to: 'user#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
