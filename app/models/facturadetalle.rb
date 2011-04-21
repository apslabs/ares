class Facturadetalle < ActiveRecord::Base
  belongs_to :factura

  validates :cantidad, :presence => true , :numericality => true, :numericality => { :greater_than => 0 }
  validates :preciounitario, :presence => true, :numericality => true, :numericality => { :greater_than => 0 }
  validates :descripcion, :presence => true

  def totalitem
    self.preciounitario * self.cantidad
  end
end
