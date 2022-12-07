Rails.application.routes.draw do
  
  # root to: "application#index"
  root to: "logins#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :usuarios do
    member do
      get "/contato", to: "usuarios#contato"
      post "/create_contato", to: "usuarios#create_contato"
    end
  end 
  resource :login, only: [:new, :create]
  resources :item_trocas

  # Login e cadastro 
  get "/application", to: "application#index"
  post "/create_usuario", to: "usuarios#create"
  delete "/logout", to: "logins#destroy"

  get "login", to: "logins#new"
  post "login", to: "logins#create"

  # Pesquisa
  get "/application/search", to: "item_trocas#search"

end
