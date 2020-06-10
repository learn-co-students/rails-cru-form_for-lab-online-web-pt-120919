Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/new' => 'artists#new'
  post '/new' => 'artists#create'

  get 'artists/:id/edit' => 'artists#edit'
  patch 'artists/:id' => 'artists#update'


  resources :artists
  resources :genres
  resources :songs

end
