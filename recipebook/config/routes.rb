Rails.application.routes.draw do
  root :to => 'pages#home'  

  # get 'recipes/index'
  get 'recipes/show'
  # get 'recipes/edit'
  # get 'recipes/new'

  # I don't quite understand what the difference here is...
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/new'

  resources :users, :only => [:index, :new, :create]
  resources :recipes 
  resources :ingredients
  resources :quantities
  # recources :steps

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
