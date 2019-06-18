Rails.application.routes.draw do
  get 'requests/index'
  get 'requests/create'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index,:show,:create]
      resources :links, only: [:index, :create]
      resources :items
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'

      get '/users/:id/pending_items', to: 'users#show_pending_items'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
