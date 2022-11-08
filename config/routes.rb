Rails.application.routes.draw do
  # root to: "application#index"
  root to: "logins#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :usuarios
  resource :login, only: [:new, :create]
  
  # Login e cadastro 
  get "/application", to: "application#index"
  post "/usuarios", to: "usuarios#create"
  delete "/logout", to: "logins#destroy"

  get "login", to: "logins#new"
  post "login", to: "logins#create"

end
