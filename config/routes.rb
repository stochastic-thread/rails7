Rails.application.routes.draw do
  resources :projects
  resources :cryptoassets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "projects#index"

end
