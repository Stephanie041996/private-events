Rails.application.routes.draw do
  resources :events
  get 'home/index'
  devise_for :users
  # resources :attendees
  root 'events#index'

  resources :events do
   
      post "attended_event"
    
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


