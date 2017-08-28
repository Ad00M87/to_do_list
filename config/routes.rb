Rails.application.routes.draw do
  root 'items#index'
  # CRUD - CREATE, READ, UPDATE, DELETE
  resources :items
end
