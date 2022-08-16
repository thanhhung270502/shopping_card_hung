Rails.application.routes.draw do
  root to: "main#index"
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'

  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
