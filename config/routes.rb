Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'control_users/index'
  resources :customers
  devise_for :users
  resources :videos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get '/',									to: 'home#index', as: :home_index
  get '/watch',             to: 'watch#index', as: :watch_index

 devise_scope :admin do
  get '/users/sign_out', to: 'devise/sessions#destroy', as: :session_destroy
    
  end

end
  



