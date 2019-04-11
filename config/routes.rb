Rails.application.routes.draw do
  devise_for :users
  #resources :sessions, only: [:destroy]
  resources :chat_rooms, only: [:new, :create, :show, :index]

  root 'chat_rooms#home'
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
