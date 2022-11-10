Rails.application.routes.draw do
  resources :item_trocas
  # root to: "application#index"
  root to: "logins#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :usuarios
  resource :login, only: [:new, :create]
  
  # Login e cadastro 
  get "/application", to: "application#index"
  post "/usuarios", to: "usuarios#create"
  delete "/logout", to: "logins#destroy"

  get "login", to: "logins#new"
  post "login", to: "logins#create"

end
