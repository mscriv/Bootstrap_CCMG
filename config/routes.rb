Rails.application.routes.draw do

  resources :subscriptions
  resources :plans
  resources :users
  resources :sessions, :only => [:create]

  get 'welcome/index'
  root 'welcome#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'signout', to: 'sessions#signout', as: 'signout'
end
