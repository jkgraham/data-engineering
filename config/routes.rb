Lsocial::Application.routes.draw do
  resources :imports, :only => [:show, :new, :create]

  root :to => 'imports#index'
end
