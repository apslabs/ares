class Factura < ActiveRecord::Base
  belongs_to :cliente
  has_many :facturarecibo
  has_many :facturanotacredito
  has_many :facturadetalle

  accepts_nested_attributes_for :facturadetalle

  attr_accessible :numero, :cliente_id, :fechavto, :fecha, :facturadetalle_attributes 
  
  attr_accessor :totalfactura
  
  validates :fecha, :presence => true
  validates :numero, :presence => true, :length => { :maximum => 10 }, :uniqueness => true, :numericality => true

  scope :no_actualizados, where("updated_at IS NULL" )
  scope :vencidas, where("fechavto < ?", Date.today)
  scope :por_cliente, lambda {|cliente| where(:cliente_id => cliente) }
  
  def totalfactura
    facturadetalle.sum("preciounitario * cantidad") # all.sum(&:totalitem)
  end
end