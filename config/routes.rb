Rails.application.routes.draw do

  root "chats#index"

  devise_for :users

  resources :chats

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
