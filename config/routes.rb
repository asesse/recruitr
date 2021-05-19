Rails.application.routes.draw do
  devise_for :users
  root to: 'positions#index'
  resources :positions do
    resources :candidates, only: [:new, :create]
  end
  resources :candidates, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
