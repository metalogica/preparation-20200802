Rails.application.routes.draw do
  devise_for :users
  #  /url   controller#action
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # /api/v1/restaurants
  # /api
  namespace :api, defaults: { format: :json } do
    # /api/v1
    namespace :v1 do
      # /api/v1/restaurants
      resources :restaurants, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
end
