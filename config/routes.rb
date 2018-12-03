Rails.application.routes.draw do
  root 'users#index'

  resources :users

  get 'show' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
