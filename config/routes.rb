Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user, only: [:create]
      resources :character, only: [:create]
      post '/users', to: 'user#create'
      post '/characters', to: 'character#create'
      get '/characters', to: 'character#index'
      get '/characters/:id', to: 'character#profile'
      # get '/profile', to: 'user#profile'
    end
  end
end
