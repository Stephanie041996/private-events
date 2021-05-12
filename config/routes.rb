Rails.application.routes.draw do
  resources :events
  get 'home/index'
  devise_for :users
  root 'events#index'
  # resources :Users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


