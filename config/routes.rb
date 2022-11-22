Rails.application.routes.draw do
  devise_for :users
  root to: "legos#index"
  resources :legos do
   resources :bookings do
    resources :reviews
   end
  end
   resources :bookings, only: [:index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
