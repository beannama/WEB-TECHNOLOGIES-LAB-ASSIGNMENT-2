Rails.application.routes.draw do
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
end
