Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  get 'pages/vip'

  root 'drivers#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'drivers', to: "drivers#index"
  # get 'drivers/new', to: "drivers#new", as: :new_driver
  # get 'drivers/:id', to: "drivers#show", as: :driver
  # post 'drivers', to: "drivers#create"
  # get 'drivers/:id/edit', to: 'drivers#edit', as: :edit_driver
  # patch 'drivers/:id', to: 'drivers#update'
  # delete 'drivers/:id', to: 'drivers#destroy'

  resources :drivers do
    resources :cars
  end
end
