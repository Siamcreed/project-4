Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'drivers', to: "drivers#index"
  get 'drivers/new', to: "drivers#new", as: :new_driver
  get 'drivers/:id', to: "drivers#show", as: :driver
  post 'drivers', to: "drivers#create"
end
