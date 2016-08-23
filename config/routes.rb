Rails.application.routes.draw do
    root :to => "pages#index"

  get '/generate', to: 'pages#generate'
  resources :heros
  #get 'pages/index'

  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
