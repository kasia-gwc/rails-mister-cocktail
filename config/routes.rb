Rails.application.routes.draw do
  root to: 'cocktails#index'
  get 'stars/create'
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  resources :cocktails do
    resources :doses, only: [ :new, :create]
    resources :stars, only: [ :new, :create]
    # resources :doses, only: [ :new, :create, :destroy]
  end
  resources :doses, only: [ :destroy ]
end

