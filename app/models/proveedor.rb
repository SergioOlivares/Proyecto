class Proveedor < ApplicationRecord
	has_many :proveedor_insumo

	validates :rut , uniqueness: true
    validates :rut, numericality: true
    
	validates :nombre, presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }

    validates :direccion, presence: { message: "no debe estar vacio"} , confirmation: true
    validates :direccion, length: { maximum: 50 }

    validates :telefono , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion telefono solo numeros
    validates :telefono, format: { with: /\A[0-9]+\z/, message: "solo se aceptan numeros" }
    #Validacion cantidad maximo 11 digitos
    validates :telefono, length: { maximum: 11 }
end
