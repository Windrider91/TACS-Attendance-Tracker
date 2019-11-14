Rails.application.routes.draw do
  root 'home#index'
  
  resources :users do
  	member do
  		post :toggle_admin
  	end
  end
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end