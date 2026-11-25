Rails.application.routes.draw do
  get "images/index"
  resource :session
  resources :passwords, param: :token
  resources :event_types
  resources :room_types
  resources :events
  resources :reservations
  resources :organisations
  resources :employees
  resources :departments
  resources :rooms
  resources :buildings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "pages#home"
  get "login" => "sessions#new"
  get "analytics" => "pages#analytics", as: :analytics
  get "about" => "pages#about", as: :aboot
  get "sarf_help" => "pages#sarf_help", as: :sarf
  get "admin_dash" => "pages#admin_dash", as: :dashboard
  get "records_dash" => "pages#records_dash", as: :records
  get "exit", to: "sessions#destroy", as: :logout
end
