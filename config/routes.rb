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
    resources :rooms,      only: %i(new create update show)
    get 'add-service/:id',       to: 'rooms#add_service'
    resources :devices,    only: %i(index show new create update destroy)
    resources :orders,     only: %i(index new create show)
  end

  namespace :renter do
    resources :home,    only: %i(index)
    put 'home/:id',     to: 'home#update_device'
    resources :orders,  only: %i(index show)
    resources :devices, only: %i(update)
    get 'checkout/:id', to: 'orders#checkout', as: :checkout
  end
  # scope "(:locale)", locale: /en|vi/ do
  # end
end
