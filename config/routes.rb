Rails.application.routes.draw do
  get 'artists' => 'artists#index', as: 'artists'

  get 'artists/new' => 'artists#new', as: 'new_artist'

  get 'artists/:id' => 'artists#show', as: 'artist'

  get 'artists/:id/edit' => 'artists#edit', as: 'edit_artist'

  post 'artists' => 'artists#create'

  patch 'artists/:id' => 'artists#update'

  resources :songs 
  resources :genres

end
