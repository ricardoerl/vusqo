Rails.application.routes.draw do
  #get 'default/index'
  root :to => 'default#index'
  devise_for :entities, :controllers => { :invitations => 'entities/invitations' }#, :path_prefix => 'devise'
  resources :entities#, only: [:edit, :show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
