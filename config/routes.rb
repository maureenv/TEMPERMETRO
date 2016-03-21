Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  resources :users
    # A resource is the term used for a collection of similar objects, such as articles, people or animals. You can create, read, update and destroy items for a resource and these operations are referred to as CRUD operations.
  root 'home#home'

end
