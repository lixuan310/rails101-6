Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    member do
      post :join
      post :quit
    end

    resources :comments
  end

  namespace :account do
    resources :movies
    resources :comments
  end

  root 'movies#index'
end
