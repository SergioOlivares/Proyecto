class Pedido < ApplicationRecord
  belongs_to :empleado
  has_many :plato_pedido
  has_many :platos

  #Validacion tipopedido no null
  validates :tipopedido, presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion tipopedido solo letras
  validates :tipopedido, format: { with: /\A[a-zA-Z]+\z/, message: "solo se aceptan letras" }
  #Validacion tamaño del tipopedido
  validates :tipopedido, length: { minimum: 1 }
  validates :tipopedido, length: { maximum: 10 }

  #Validacion fecha no null
  validates :fecha, presence: { message: "No debe estar vacio"} , confirmation: true
  #Validacion tamaño de fecha
  validates :fecha, length: { minimum: 8 }
  validates :fecha, length: { maximum: 12 }


end
