# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'events#index'
  resources :events
  resources :chats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'chats#show'
  post '/chats', to: 'chats#create'

  mount ActionCable.server => '/cable'
end
