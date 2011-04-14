class Factura < ActiveRecord::Base
  belongs_to :cliente
  has_many :recibo
  has_many :notacredito
end
