Cms::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "home#index"
  ActiveAdmin.routes(self)
  get ':path', to: 'pages#show', as: 'page'
end
