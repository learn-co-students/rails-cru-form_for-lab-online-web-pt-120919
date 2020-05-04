Rails.application.routes.draw do
  resources :genres
  # get 'song/new,'

  # get 'song/create,'

  # get 'song/update,'

  # get 'song/destroy,'

  # get 'song/show,'

  # get 'song/index,'

  # get 'song/edit'
  
  resources :artists
  resources :songs
  resources :genre

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
