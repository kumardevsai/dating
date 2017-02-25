Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  get '/login' => 'users#new'
  post '/register' => 'users#create'
  post '/login' => 'sessions#create'

  resources :users
end
