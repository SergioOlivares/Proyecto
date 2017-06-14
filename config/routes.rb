Rails.application.routes.draw do
  
  resources :proveedor_insumos
  resources :mesas
  resources :proveedors
  resources :insumos
  resources :platos
  resources :plato_pedidos
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
