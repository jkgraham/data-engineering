Lsocial::Application.routes.draw do
  resources :imports, :only => [:show, :new, :create]

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'login', to: 'sessions#new', as: 'login'
  match 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => 'imports#index'
end
