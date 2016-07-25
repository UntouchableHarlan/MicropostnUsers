Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/profile' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'microposts#index'
  get 'signup' => 'users#new'
  resources :users
  resources :microposts
end
