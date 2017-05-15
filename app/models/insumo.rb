class Insumo < ApplicationRecord
	has_many :proveedor_insumo
has_many :insumo_plato
  
#Validacion nombre no null
	validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }

	validates :cantidad , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion telefono solo numeros
    validates :cantidad, format: { with: /\A[0-9]+\z/, message: "solo se aceptan numeros" }
    #Validacion cantidad maximo 5 digitos
    validates :cantidad, length: { maximum: 5 }
end
