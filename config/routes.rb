Rails.application.routes.draw do
  root 'tops#index'
  resources :tops, only: [:new, :create]
end
