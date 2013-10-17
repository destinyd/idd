Cms::Application.routes.draw do
  resources :posts
  resources :pages
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "home#index"
  ActiveAdmin.routes(self)
  #get ':path', to: 'pages#show', as: 'page', path: /[\/_a-zA-Z0-9]+/
end
