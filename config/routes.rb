Rails.application.routes.draw do
  get 'users/show'

  get 'users/new'

  get 'users/edit'

  root "watches#index"
  resources :watches 
end
