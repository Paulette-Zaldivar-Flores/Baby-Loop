Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :offers, only: %i[index show new create edit update destroy] do
    resources :requests, only: %i[new create]
  end

  resources :requests, only: :index

  namespace :lessor do
    resources :requests, only: %i[index update]
    # equivalent to => get '/<namespace>/bookings', to: '<namespace>/bookings#index'
  end
end
