Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index,:show,:create]
      resources :links, only: [:index, :create]
      resources :items, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
