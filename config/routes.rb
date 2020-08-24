Rails.application.routes.draw do
  resources :users
  # resources :users, only: %i[new create index]
end
