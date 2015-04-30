Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get "apt_listings/new", to: "aptlistings#new"
  get "sub_listings/new", to: "sublistings#new"
  post "sub_listings", to: "sublistings#create"
  post "apt_listings", to: "aptlistings#create"

  get "apt_listings", to: "aptlistings#show" #correct
  get "sub_listings", to: "sublistings#show" #correct

  get "sub_listings/roomie", to: "sublistings#roomie"

  get "all_listings", to: "users#all"
  get "post_listings", to: "users#choose"
  get "contact", to: "users#contact"
  post "contact", to: "users#message1"
  # post 'newlisting', to: 'aptlistings#show'
end
