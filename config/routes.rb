Rails.application.routes.draw do
  root to: "application#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :usuarios
  get "/application", to: "application#index"

  resources :itens
  post "/itens", to: "itens#search"

end
