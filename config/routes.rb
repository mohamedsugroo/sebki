Rails.application.routes.draw do
	
  resources :blogs, path: '/press'
  devise_for :users
  resources :companies
  root 'home#index'
  get 'sign_in', to: 'home#member'

end
