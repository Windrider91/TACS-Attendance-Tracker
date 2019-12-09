Rails.application.routes.draw do
  resources :event_sign_ins
  root 'home#index'
  
  resources :users do
  	member do
  		post :toggle_admin
  		post :toggle_dues
  		#get 'toggle_admin', to: 'users#toggle_admin', as: 'toggle_admin'
  	end
  end
  
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
end