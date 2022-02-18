Rails.application.routes.draw do
  get 'follows/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'animes#index'
  resources :follows
  resources :animes
  resources :users
end
