Rails.application.routes.draw do
  namespace :customer_api do
    post "ping", to: "users#ping"
    post "read", to: "messages#read"
  end

  namespace :admin_api do
    resources :users, only: [:index]
    resources :messages, only: [:create]
  end
end
