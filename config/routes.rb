Rails.application.routes.draw do

  devise_for :users

  resources :users do
    member do
      get :following, :followers
    end
  end

  root 'twitts#index'

  resources :twitts

  resources :relationships, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
