Rails.application.routes.draw do
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
  }

  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  root 'tops#index'
  resources :tops, only: [:new, :create] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
    end
  end
end
