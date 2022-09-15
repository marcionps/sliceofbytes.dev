Rails.application.routes.draw do
  get "about", to: "pages#about"
  resources :posts, except: [ :index ]

  # Defines the root path route ("/")
  root "posts#index"
end
