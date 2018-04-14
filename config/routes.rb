Rails.application.routes.draw do
  resources :personasreservas
  resources :reservas
  devise_for :usuarios
  resources :organizadors
  resources :comisioneventos
  resources :eventoinstancia
  resources :eventos
  resources :empresas
  devise_for :admin_users, ActiveAdmin::Devise.config
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
