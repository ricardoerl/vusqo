Rails.application.routes.draw do
  get 'request/create'

  # get 'default/index'
  root to: 'default#index'
  devise_for :entities, controllers: { invitations: 'entities/invitations' }
  resources :entities, path: 'empresas'
  resources :requests, only: [:create]

  get '/registro' => 'default#apply', as: 'registro'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
