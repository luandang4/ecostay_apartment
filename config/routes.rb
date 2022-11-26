Rails.application.routes.draw do
  devise_for :users
  root to: 'roots#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :owner do
    resources :dashboards, only: %i(index)
  end

  namespace :renter do
    resources :home, only: %i(index)
  end
end
