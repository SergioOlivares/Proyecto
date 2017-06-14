Rails.application.routes.draw do
<<<<<<< HEAD

  resources :empleados
  resources :insumo_platos
  resources :pedidos
=======
  
  resources :proveedor_insumos
  resources :mesas
  resources :proveedors
  resources :insumos
  resources :platos
  resources :plato_pedidos
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 5ac69aedf27c2c446d83b3b793028d2787fa637f
end
