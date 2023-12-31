
  # get 'documentary_films/index'
  # get 'documentary_films/create'
  # get 'documentary_films/new'
  # get 'series/index'
  # get 'series/create'
  # get 'series/new'
  # get 'movies/index'
  # get 'movies/create'
  # get 'movies/new'

  Rails.application.routes.draw do
    resources :movies, only: [:index, :create, :new]
    resources :series, only: [:index, :create, :new]
    resources :documentary_films, only: [:index, :create, :new]
  
    root to: 'movies#index'
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

