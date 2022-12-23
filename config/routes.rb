Rails.application.routes.draw do
  devise_for :users
  root to: 'roots#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :owner do
    resources :dashboards, only: %i(index)
    resources :apartments, only: %i(index)
    resources :users,      only: %i(index show new create update)
    resources :services,   only: %i(index show new create update destroy)
    resources :rooms,      only: %i(new create update)
    resources :devices,    only: %i(index show new create update destroy)
    resources :orders,     only: %i(index new create show)
  end

  namespace :renter do
    resources :home,   only: %i(index)
    resources :orders, only: %i(index show)
  end
  # scope "(:locale)", locale: /en|vi/ do
  # end
end
