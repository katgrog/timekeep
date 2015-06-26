Rails.application.routes.draw do
  root 'watches#index'
  resources :watches 
  resources :users, except: [:index, :show] 
  get 'profile', to: 'users#show', as: :profile 
  resource :session
end
