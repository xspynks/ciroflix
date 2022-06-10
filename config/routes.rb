Rails.application.routes.draw do
  devise_for :admins
  resources :pictures  
  resources :videos
  
  devise_scope :admin do
  get "/logout",        to:"devise/sessions#destroy", as: :logout
  get "/login",        to:"devise/sessions#new", as: :login
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  authenticate :admin, -> (u) { u.admin? } do # Supposing there is a User#admin? method
  mount ActiveAnalytics::Engine, at: "stats" # http://localhost:3000/analytics
end

end
  



