Rails.application.routes.draw do
  resources :notes
  root :to => 'pages#home'  

  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/edit'
  get 'recipes/new'
  get 'recipes/search'
  get 'recipes/filter'
  get 'recipes/filter_ing'
 
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/new'
  
  resources :users, :only => [:index, :new, :create]
  resources :recipes, shallow: true do
    resources :ingredients
    resources :quantities
    resources :steps
    resources :notes
  end

  resources :quantities, shallow: true do
    resources :recipes
    resources :ingredients
  end

  resources :ingredients, shallow: true do
    resources :recipes
    resources :quantities
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
