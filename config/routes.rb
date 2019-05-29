Rails.application.routes.draw do

  get 'sessions/new'
  root 'users#index'
  #post '/signup',  to: 'users#create'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :podcasts
  resources :favorites
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
