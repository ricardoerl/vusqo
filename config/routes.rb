Rails.application.routes.draw do
  get 'request/create'

  # get 'default/index'
  root to: 'default#index'
  devise_for :entities, controllers: { invitations: 'entities/invitations' }, skip: [:sessions]
  as :entity do
    get 'empresas/login' => 'devise/sessions#new', :as => :new_entity_session
    post 'empresas/login' => 'devise/sessions#create', :as => :entity_session
    delete 'empresas/logout' => 'devise/sessions#destroy', :as => :destroy_entity_session
  end
  resources :entities, path: 'empresas'
  resources :requests, only: [:create]

  get '/registro' => 'default#apply', as: 'registro'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
