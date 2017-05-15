class Mesa < ApplicationRecord
	validates :cantidadpersonas, presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion cantidadpersona solo numeros
    validates :cantidadpersonas, format: { with: /\A[0-9]+\z/, message: "solo se aceptan numeros" }
    #Validacion cantidadpersona maximo 3 digitos
    validates :cantidadpersonas, length: { maximum: 3 }

    validates :ubicacion, presence: { message: "no debe estar vacio"} , confirmation: true
    #Validacion tamaño del nombre
    validates :ubicacion, length: { minimum: 2 }
    validates :ubicacion, length: { maximum: 50 }
end
