Rails.application.routes.draw do
  get 'request/create'

  #get 'default/index'
  root :to => 'default#index'
  devise_for :entities, :controllers => { :invitations => 'entities/invitations' }#, :path_prefix => 'devise'
  resources :entities, :path => "empresas"#, only: [:edit, :show, :update]
  resources :requests, only: [:create]

  get '/solicitar' => 'default#apply', as: 'apply'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
