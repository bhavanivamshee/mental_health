Rails.application.routes.draw do
  resources :conditions
  resources :providers
  resources :behaviors
  resources :insurances
  resources :medications
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
