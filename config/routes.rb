Rails.application.routes.draw do

  get 'users/show'

  root "home#index"

  resources :todos
  devise_for :users, controllers: { registrations: "registrations" }


end
