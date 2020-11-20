Rails.application.routes.draw do
  root 'tops#index'
  resources :tops, only: [:new, :create] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
    end
  end
end
