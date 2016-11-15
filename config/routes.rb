Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :users do 
    member do 
      get 'posts' => 'users#posts'
    end
  end
  resources :posts
  resources :posts do 
    resources :comments 
  end

  root to: 'posts#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
