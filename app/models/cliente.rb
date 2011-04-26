class Cliente < ActiveRecord::Base
  has_many :factura
  has_many :recibo
  has_many :notacredito

  validates :cuit, :presence => true, :length => { :maximum => 11 }, :uniqueness => true
  validates :razonsocial, :presence => true
  validates :codigo, :presence => true, :uniqueness => true

  validates_numericality_of :cuit, :only_integer => true, :message => "solo numeros"
#  validates_inclusion_of :cuit, :in => 20000000000..38000000000, :message => "solo puede ingresar numeros entre 20 y 38."


  scope :sin_telefono, where("clientes.telefono = '' ")
  scope :no_actualizados, where("updated_at IS NULL" )
  scope :orden_alfabetico, order("clientes.razonsocial")
end
