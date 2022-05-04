Rails.application.routes.draw do
  namespace :admin do
      resources :homes

      root to: "homes#index"
    end
  resources :videos 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/',									to: 'home#index', as: :home
  get '/watch',             to: 'watches#index', as: :watch

end
  



