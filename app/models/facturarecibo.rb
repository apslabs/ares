class Facturarecibo < ActiveRecord::Base
  belongs_to :factura
  belongs_to :recibo
  has_one :cliente, :through => :factura

  scope :por_cliente, lambda {|cliente| where(:cliente_id => cliente) }
end
