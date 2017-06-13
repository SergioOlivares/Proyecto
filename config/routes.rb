Rails.application.routes.draw do

  get 'empleados/', to: 'empleados#index'
  get 'empleados/:id', to: 'empleados#mostrar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
