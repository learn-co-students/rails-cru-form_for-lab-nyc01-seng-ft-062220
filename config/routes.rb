Rails.application.routes.draw do
  resources :songs, only: [:create, :update, :show, :edit, :new, :index]
  resources :artists, only: [:create, :update, :show, :edit, :new, :index]
  resources :genres, only: [:create, :update, :show, :edit, :new, :index]
  
end
