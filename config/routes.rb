Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'

  #get 'static_pages/home'
  #get 'static_pages/help'
  #get 'static_pages/about'
  #get 'static_pages/contact'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to:'users#new'
  get '/login', to:'sessions#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#home"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :account_activations, only: [:edit]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :users do
    member do
      get :following, :followers
    end
  end
end
