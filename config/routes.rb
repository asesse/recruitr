Rails.application.routes.draw do
  devise_for :users
  root to: 'positions#index'
  resources :positions do
    resources :candidates, only: [:new, :create]
    resources :position_skills, only: [:new, :create]
  end
  resources :candidates, only: [:show] do
    resources :interviews, only: [:show, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
