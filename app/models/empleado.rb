class Empleado < ApplicationRecord
  has_many :pedido

  #Validacion rut no null
  validates :rut , presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion rut solo numeros
  validates :rut, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros" }
  #Validacion largo rut
  validates :rut, length: { maximum: 8 }

  #Validacion nombre no null
  validates :nombre , presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion nombre solo letras
  validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
  #Validacion tamaño del nombre
  validates :nombre, length: { minimum: 2 }
  validates :nombre, length: { maximum: 50 }

  #Validacion telefono no null
  validates :telefono , presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion telefono solo numeros
  validates :telefono, format: { with: /\A[0-9]+\z/, message: "Solo se aceptan numeros"}
  #Validacion largo telefono
  validates :telefono, length: { maximum: 8 }

  #Validacion direccion no null
  validates :direccion , presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion tamaño de dirección
  validates :nombre, length: { minimum: 2 }
  validates :nombre, length: { maximum: 50 }

  #Validacion cargo no null
  validates :cargo , presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion cargo solo letras
  validates :cargo, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
  #Validacion tamaño del cargo
  validates :cargo, length: { maximum: 5 }

  #Validacion turno no null
  validates :turno , presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion turo solo letras
  validates :turno, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
  #Validacion tamaño del turno
  validates :turno, length: { maximum: 5 }

end
