require 'sidekiq/web'

DemoSidekiqMailer::Application.routes.draw do
  root to: 'emailings#new'

  resources :emailings, only: [:new, :create]

  mount Sidekiq::Web => '/sidekiq'
end
