Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :offers, only: %i[index show new create destroy] do
    resources :requests, only: %i[new create]
  end

  resources :requests, only: :index

  get "/my-offers", to: "offers#my_offers"

  namespace :lessor do
    resources :requests, only: :index
    # equivalent to => get '/<namespace>/bookings', to: '<namespace>/bookings#index'
  end
end
