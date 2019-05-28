Rails.application.routes.draw do

  root 'users#index'
  #post '/signup',  to: 'users#create'
  resources :podcasts
  resources :favorites
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
