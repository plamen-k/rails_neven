Rails.application.routes.draw do

  resources :stockists
  resources :heros
  resources :products
  resources :categories
  resources :articles

  root :to => "pages#index"

  get '/generate',  to: 'pages#generate', as: 'generate'
  get '/about',     to: 'pages#about',    as: "about"
  get '/contact',   to: 'pages#contact',  as: 'contact'

  match 'stockist/become' => 'stockist#become', via: [:get, :post], as: 'become_stockist'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
