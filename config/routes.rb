Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # get '/login' => 'users#new'
  post '/register' => 'users#create'
  post '/login' => 'sessions#create'


  resources :users do
    member do
      get '/messages' => 'users#messages'
    end
  end
  resources :sessions

end
