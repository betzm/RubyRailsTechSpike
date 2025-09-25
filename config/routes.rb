Rails.application.routes.draw do
  resources :data_entries, only: [:new, :create]

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "data_entries#new"   # <- uncomment this if you want your form as the homepage
end
