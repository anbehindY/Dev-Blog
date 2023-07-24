Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'users#index'
  get 'user/:id', to: 'users#show'
  # Defines the root path route ("/")
  # root "articles#index"
end
