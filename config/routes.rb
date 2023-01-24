Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
  
  root 'application#home'

  get '/users/new', to: 'users#new'
  post '/users/new', to: 'users#create'
  get '/signin', to: 'users#signin'
  post '/signin', to: 'users#signedin'
  get '/signout', to: 'users#signout'
  post '/ride', to:"rides#create", as: 'ride'
end
