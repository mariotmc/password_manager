Rails.application.routes.draw do
  root "passwords#index"

  devise_for :users
  resources :passwords

  get "up" => "rails/health#show", as: :rails_health_check
end
