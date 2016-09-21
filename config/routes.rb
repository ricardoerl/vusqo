Rails.application.routes.draw do
  #get 'default/index'
  root :to => 'default#index'
  devise_for :entities
  resources :entities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
