Rails.application.routes.draw do
  get 'orders/index'

  get 'orders/show'

  get 'orders/new'

  root 'watches#index'
  resources :watches do 
  	resources :orders, only: [:index, :new, :create]
  end

  resources :users, except: [:index, :show] 
  get 'profile', to: 'users#show', as: :profile 
  resource :session

  # Receipt Page
  resources :orders, only: :show
end
