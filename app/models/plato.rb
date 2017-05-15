class Plato < ApplicationRecord
has_many :plato_pedido
has_many :insumo_plato
  
#Validacion nombre no null
	validates :nombre , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion nombre solo letras
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
    #Validacion tamaño del nombre
    validates :nombre, length: { minimum: 2 }
    validates :nombre, length: { maximum: 50 }

	validates :precio , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion precio solo numeros
    validates :precio, format: { with: /\A[0-9]+\z/, message: "solo se aceptan numeros" }
    #Validacion cantidad maximo 5 digitos
    validates :precio, length: { maximum: 6 }

    validates :tipo , presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion tipo solo letras
    validates :tipo, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
    #Validacion tamaño del tipo
    validates :tipo, length: { minimum: 6 }
    validates :tipo, length: { maximum: 50 }

    validates :descripcion , presence: { message: "no debe estar vacio"} , confirmation: true
    validates :descripcion, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
    validates :descripcion, length: { minimum: 6 }
    validates :descripcion, length: { maximum: 50 }



end
