Rails.application.routes.draw do
  resources :itens
  root 'itens#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/application", to: "application#index"
end
