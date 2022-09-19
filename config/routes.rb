Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :tags
  get "about", to: "pages#about"
  resources :posts, except: [ :index ]

  # Defines the root path route ("/")
  root "posts#index"
end
