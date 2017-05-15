class InsumoPlato < ApplicationRecord
  belongs_to :insumo
  belongs_to :plato

  #Validacion cantidadusada no null
  validates :cantidadusada , presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion cantidadusada solo numeros
  validates :cantidadusada, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros"}
  #Validacion largo cantidadusada
  validates :cantidadusada, lenght: { minimum: 1}
  validates :cantidadusada, length: { maximum: 5 }

  #Validacion unidadmedida no null
  validates :unidadmedida, presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion unidadmedida solo letras
  validates :unidadmedida, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
  #Validacion tamaño del unidadmedida
  validates :unidadmedida, length: { minimum: 1 }
  validates :unidadmedida, length: { maximum: 10 }


end
