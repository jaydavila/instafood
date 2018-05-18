Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  get 'pages/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/index', to: 'pages#index'

  resources :recipes

    get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]
end
