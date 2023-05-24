Rails.application.routes.draw do
  root 'home#index'
  get '/home/ruby', to: 'home#ruby'
  get '/home/rails', to: 'home#rails'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:index, :create, :destroy]
end
