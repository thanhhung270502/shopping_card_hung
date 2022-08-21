Rails.application.routes.draw do
  # root to: "main#index"
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/setting'

  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'
  
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  
  delete 'log_out', to: 'sessions#destroy'

  # get 'password', to: 'users#edit', as: :edit_password
  # patch 'password', to: 'users#update'

  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
