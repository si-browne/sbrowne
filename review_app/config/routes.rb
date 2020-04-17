Rails.application.routes.draw do
  #get 's_tatic_pages/productmeny'
  get 'static_pages/home'
  #home set as homepage
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  # defined resources
  resources :products, :reviews, :profiles, :users
end