Rails.application.routes.draw do
  resources :school_addresses
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'base#index'
end
