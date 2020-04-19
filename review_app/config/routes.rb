Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  # defined resources
  resources :products, :reviews, :profiles, :users, :sessions
  
end