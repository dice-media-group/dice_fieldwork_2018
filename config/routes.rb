Rails.application.routes.draw do
  devise_for :users
  resources :services, :orders, :line_items, :carts, :consultations

  resources :accounts do
    resources :notes, only: [:index, :new]
    resources :service_agreements, shallow: true
    # resources :consultations, only: [:index, :new]
  end
  mount RailsAdmin::Engine => '/backstage', as: 'rails_admin'
end
