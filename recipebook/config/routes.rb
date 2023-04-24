Rails.application.routes.draw do
  root :to => 'pages#home'  
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/edit'
  get 'recipes/new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/new'
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
