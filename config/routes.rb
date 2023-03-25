Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :rides
  resources :bikes
  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
