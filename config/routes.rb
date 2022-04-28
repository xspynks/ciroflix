Rails.application.routes.draw do
    resources :customers
    resources :videos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/',									to: 'home#index', as: :home_index
  get '/watch',             to: 'watch#index', as: :watch_index

end
  



