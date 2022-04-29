Rails.application.routes.draw do
  resources :videos 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/',									to: 'home#index', as: :home
  get '/watch',             to: 'watches#index', as: :watch

end
  



