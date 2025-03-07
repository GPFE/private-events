Rails.application.routes.draw do
  get "users/index"
  get "users/event/:id", to: "users#show", as: 'user'
  devise_for :users
  get "events/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  # root "events#index"
  root "attendable_events#index"
  resources "events"
  # resources "attandable_events", controller: "attendable_events", only: [:index, :new, :create]
  resources :attendable_events, only: [:index, :new, :create], controller: :attendable_events

end
