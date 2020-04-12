Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :chats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'
  # get '/' => 'chat#show'

  mount ActionCable.server => '/cable'
end
