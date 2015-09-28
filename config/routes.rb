Rails.application.routes.draw do

  root "home#index"

  resources :todos
  devise_for :users, controllers: { registrations: "registrations" }


end
