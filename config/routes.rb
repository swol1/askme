Rails.application.routes.draw do
  root 'users#index'

  resources :users, except: [:destroy]
  resources :questions
  resources :sessions, only: [:new, :create, :destroy]

  get 'show' => 'users#show'

  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'
end
