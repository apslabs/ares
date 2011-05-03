# == Schema Information
# Schema version: 20110427202648
#
# Table name: facturadetalles
#
#  id             :integer         not null, primary key
#  factura_id     :integer
#  descripcion    :string(255)
#  cantidad       :decimal(, )
#  preciounitario :decimal(, )
#  created_at     :datetime
#  updated_at     :datetime
#  tasaiva        :decimal(, )
#

class Facturadetalle < ActiveRecord::Base
  belongs_to :factura

  attr_accessible :cantidad, :descripcion, :preciounitario, :tasaiva
  attr_accessor :totalitem

  validates :cantidad, :presence => true , :numericality => true, :numericality => { :greater_than => 0 }
  validates :preciounitario, :presence => true, :numericality => true, :numericality => { :greater_than => 0 }
  validates :descripcion, :presence => true
  validates :tasaiva, :presence => true, :numericality => true

  def totalivaitem
    self.tasaiva = 0 if self.tasaiva.nil?
    self.preciounitario = 0 if self.preciounitario.nil?
    self.cantidad = 0 if self.cantidad.nil?
    
    self.preciounitario * self.cantidad * (self.tasaiva/100)
  end  

  def totalitem
    self.tasaiva = 0 if self.tasaiva.nil?
    self.preciounitario = 0 if self.preciounitario.nil?
    self.cantidad = 0 if self.cantidad.nil?
    
    self.preciounitario * self.cantidad * (1 + (self.tasaiva/100))
  end  
end
