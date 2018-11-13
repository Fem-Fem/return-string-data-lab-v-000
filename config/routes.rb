Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:create]
  get '/posts/:id/body', to: 'posts#body'
  get /products/:id/inventory
  get /products/:id/description
end
