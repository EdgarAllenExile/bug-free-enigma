Rails.application.routes.draw do
  root :to => 'pages#home'  
  resources :users, :only => [:index, :new, :create]
  resources :recipes, :only => [:index, :new, :create, :edit, :show] 

  # get 'recipes/index'
  # get 'recipes/show'
  # get 'recipes/edit'
  # get 'recipes/new'

  # I don't quite understand what the difference here is...
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
