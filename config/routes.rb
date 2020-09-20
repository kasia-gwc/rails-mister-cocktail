Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [ :new, :create]
    resources :reviews, only: [ :new, :create]
    # resources :doses, only: [ :new, :create, :destroy]
  end
  resources :doses, only: [ :destroy ]
end

