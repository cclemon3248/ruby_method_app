Rails.application.routes.draw do
  root 'home#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
