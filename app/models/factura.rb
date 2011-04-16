class Factura < ActiveRecord::Base
  belongs_to :cliente
  has_many :facturarecibo
  has_many :facturanotacredito
end
