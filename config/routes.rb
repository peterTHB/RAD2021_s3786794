Rails.application.routes.draw do
  resources :images
  resources :static_pages do
    collection do
      get :savedToList
    end
  end
  resources :fashion do
    collection do
      get :savedToListOrNot
      get :moveForward
      get :moveBackward
    end
  end
  get '/home', to: 'static_pages#home'
  get '/women', to: 'collection#women'
  get '/men', to: 'collection#men'
  get '/kids', to: 'collection#kids'
  get '/new_arrivals', to: 'collection#new_arrivals'
  get '/collection_index', to: 'collection#collection_index'
  get '/shopping_cart', to: 'fashion#shopping_cart'
  get '/search', to: 'fashion#search'
  get '/saved_list', to: 'fashion#saved_list'
  get '/help&support', to: 'static_pages#help&support'
  post 'static_pages/savedToList', to: 'static_pages#savedToList'
  post 'fashion/savedToListOrNot', to: 'fashion#savedToListOrNot'
  post 'fashion/moveForward', to: 'fashion#moveForward'
  post 'fashion/moveBackward', to: 'fashion#moveBackward'
  # root 'static_pages#home'
  root 'fashion#saved_list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
