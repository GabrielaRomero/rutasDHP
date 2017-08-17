Rails.application.routes.draw do
  
  resources :localizacions
  resources :guia
  get 'informa/vis'

  get 'informa/parr'

  get 'informa/mig'

  get 'informa/jose'

  get 'informa/inf'

  get 'informa/her'

  get 'informa/cmj'

  devise_for :users
  get 'inicio/ini'

  get 'geoloca/geo'

  get 'galeria/galeria'

  resources :orders
  resources :pedidos
  resources :line_items
  resources :carros
#root 'store#index'
root 'inicio#ini'
get 'store/index', as: 'store_index'
  resources :reservas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
