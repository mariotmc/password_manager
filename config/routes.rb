Rails.application.routes.draw do
  root "passwords#index"

  devise_for :users
  resources :passwords do
    resources :shares, only: [:new, :create, :destroy]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
