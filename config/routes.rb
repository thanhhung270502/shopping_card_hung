Rails.application.routes.draw do
  # root to: "main#index"
  root to: "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'

  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'
  
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  
  delete 'log_out', to: 'sessions#destroy'

  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
