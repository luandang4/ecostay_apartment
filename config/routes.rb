Rails.application.routes.draw do
  devise_for :users
  scope "(:locale)", locale: /en|vi/ do
    root to: 'roots#index'

    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)

    namespace :owner do
      resources :dashboards, only: %i(index)
      resources :apartments, only: %i(index)
      resources :users,      only: %i(index show)
      resources :services,   only: %i(index show)
    end

    namespace :renter do
      resources :home, only: %i(index)
    end
  end
end
