Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :service_orders, only: %i[index new create show]
  resources :transport_modalities, only: %i[index create show edit update]

  resources :vehicles, only: %i[index new create edit update show] do 
    get 'search', on: :collection
    get 'send_to_maintenance', on: :member
  end

  resources :table_entries, only: %i[new create]
end
