Rails.application.routes.draw do
  resources :events
  get 'home/index'
  devise_for :users
  get '/@:email', to: 'users#show', as: :profile 
  # resources :attendees
  root 'events#index'

  resources :events do
   
      post "attended_event"
    
  end
  # resources :Users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


