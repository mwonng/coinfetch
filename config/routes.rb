Rails.application.routes.draw do
  resources :transactions
  resources :currencies

  get 'dashboard/capture'
  get 'dashboard/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'dashboard#index'
end
