Rails.application.routes.draw do
  resources :ejuices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'ejuices#index'
end
