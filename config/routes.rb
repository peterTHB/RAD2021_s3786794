Rails.application.routes.draw do
  resources :images
  get '/home', to: 'static_pages#home'
  get '/women', to: 'collection#women'
  get '/men', to: 'collection#men'
  get '/kids', to: 'collection#kids'
  get '/new_arrivals', to: 'collection#new_arrivals'
  get '/collection_index', to: 'collection#collection_index'
  get '/shopping_cart', to: 'fashion#shopping_cart'
  get '/search', to: 'fashion#search'
  get '/help&support', to: 'static_pages#help&support'
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
