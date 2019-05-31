Rails.application.routes.draw do

  root 'sessions#home'
  get 'sessions/new'

  get "/about", to: "sessions#about"
  #post '/signup',  to: 'users#create'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :podcasts
  resources :favorites
  post '/favorites', to: 'favorites#create', as: 'create_favorite'
  delete '/favorties/:id', to: 'favorites#delete', as: 'delete_favorite'
  resources :users do
    member do
        get :following, :followers
      end
    end
  resources :follows, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
