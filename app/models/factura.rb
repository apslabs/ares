class Factura < ActiveRecord::Base
  belongs_to :cliente
  has_many :facturarecibo
  has_many :facturanotacredito
  validates :fecha, :presence => true
  validates :numero, :presence => true, :length => { :maximum => 10 }, :uniqueness => true, :numericality => true
  validates :importe, :presence => true, :numericality => true
end
