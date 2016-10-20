Rails.application.routes.draw do
  get 'request/create'

  # get 'default/index'
  root to: 'default#index'
  devise_for :entities, path: 'empresas', controllers: { invitations: 'entities/invitations' }
  resources :entities, path: 'empresas'

  resources :requests, only: [:create]

  get '/registro' => 'default#apply', as: 'registro'
  get '/configuracion' => 'entities#settings', as: 'configuracion'
  patch '/update_password' => 'entities#update_password', as: 'update_password'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
