Rails.application.routes.draw do
  resources :users, only: %i[new create index edit update destroy]
  root 'users#index'
  post "/create", to: "session#create"
end
