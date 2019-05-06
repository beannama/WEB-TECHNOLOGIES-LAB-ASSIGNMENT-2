Rails.application.routes.draw do
  get 'sessions/new'
  get 'registrations/new'
  get 'registrations/index'
  get 'sessions/index'
  resources :comments
  resources :follows
  resources :profiles
  resources :images
  resources :attachments
  resources :links
  resources :votes
  resources :blacklists
  resources :dumpsters
  resources :innapropiates
  resources :posts
  resources :admins
  resources :geofences
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'sessions#index'

  post '/login',   to: 'sessions#create', as: :log_in
  delete '/log_out' => 'sessions#destroy', as: :log_out

  get '/sign_in' => 'registrations#index', as: :registrations
  post '/sign_in' => 'registrations#create', as: :sign_in
end
