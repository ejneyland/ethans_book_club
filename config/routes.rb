Rails.application.routes.draw do
  get 'books', to: 'books#index'
  # get 'books/show'
  get 'books/:id', to: 'books#show', as: 'book'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'books#index'
end
