Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  resources :users
  resource :session
  # session's resource is singular because session doesn't need an index route, ID or Show, edit, delete. This is because a "resource" is something that will nto be saved to the database and doesn't need an ID.

    # A resource is the term used for a collection of similar objects, such as articles, people or animals. You can create, read, update and destroy items for a resource and these operations are referred to as CRUD operations.
  root 'home#home'

end
