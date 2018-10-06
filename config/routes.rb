Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/backstage', as: 'rails_admin'
end
