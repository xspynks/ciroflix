Rails.application.routes.draw do
  resources :pictures
  
  resources :videos
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  
  # get '/watch',             to: 'watches#index', as: :watch

end
  



