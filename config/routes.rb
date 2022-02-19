Rails.application.routes.draw do
  get 'follows/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'animes#index'
  # resources :follows
  resources :animes
  resources :users

  resources :follows do 
    collection do
      get 'favorites'
      post '/add_follow/:anime_id', to: 'follows#add_follow', as: :add
      delete '/remove_follow/:id', to: 'follows#remove_follow', as: :remove
      post '/add_favorite/:anime_id', to: 'follows#add_favorite', as: :add_favorite
      delete '/remove_favorite/:id', to: 'follows#remove_favorite', as: :remove_favorite
    end
  end

  
end
