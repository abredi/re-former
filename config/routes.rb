Rails.application.routes.draw do
  resources :users, only: %i[new create index]
end
