Rails.application.routes.draw do
  get 'static_pages/home'

  root 'static_pages#home'
  # CRUD - CREATE, READ, UPDATE, DELETE
  resources :items
end
