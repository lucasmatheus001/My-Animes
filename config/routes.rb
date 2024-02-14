Rails.application.routes.draw do
  get 'follows/index'
  get '/animes', to: 'animes#index'
  get '/animes/busca', to: 'animes#busca', as: 'busca_animes'
  get "/animes/render_anime_partial", to: "animes#render_anime_partial"
  post '/animes/cadastrar_anime_from_json', to: 'animes#cadastrar_anime_from_json', as: 'cadastrar_anime_from_json_animes'


  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'animes#index'

  resources :animes do
    get 'show_from_json', on: :collection
  end

  # resources :follows
 
  resources :users

  resources :follows do 
    collection do
      get 'favorites', as: :favorites
      post '/add_follow/:anime_id', to: 'follows#add_follow', as: :add
      delete '/remove_follow/:id', to: 'follows#remove_follow', as: :remove
      post '/add_favorite/:anime_id', to: 'follows#add_favorite', as: :add_favorite
      delete '/remove_favorite/:id', to: 'follows#remove_favorite', as: :remove_favorite
    end
  end

  
end
