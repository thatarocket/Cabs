Rails.application.routes.draw do
  get 'welcome/homepage'
  # root to: "application#index"
  root to: "welcome#homepage"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :usuarios

  resource :login, only: [:new, :create]

  resources :favoritos

  resources :itens
  
  get "/application", to: "application#index"
end
