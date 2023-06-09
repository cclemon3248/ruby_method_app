Rails.application.routes.draw do
  root 'home#index'
  get '/home/ruby', to: 'home#ruby'
  get '/home/rails', to: 'home#rails'
  resources :users
  resources :sessions, only: [:new, :create, :destroy] do
    collection do
      post :guest_login
    end
  end
  resources :blogs do
    collection do
      post :confirm
      get :search
    end
  end
  resources :favorites, only: [:index, :create, :destroy]
  resources :comprehensions, only: [:create, :destroy]
end
