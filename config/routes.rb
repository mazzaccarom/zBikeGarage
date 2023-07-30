Rails.application.routes.draw do
  get 'home/index'
  get 'about', to: 'about#index'
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :rides
  resources :bikes
  resources :stravas
  resources :buysells
  resources :meetups
  resources :parts
  root 'home#index'

  resources :bikes do
    member do
      patch :reset_suspension_hours
    end
  end
end
