Rails.application.routes.draw do
  devise_for :users
  #  /url   controller#action
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # /api/v1/restaurants
end
