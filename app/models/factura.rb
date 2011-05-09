# == Schema Information
# Schema version: 20110427202648
#
# Table name: facturas
#
#  id         :integer         not null, primary key
#  cliente_id :integer
#  fecha      :date
#  numero     :integer
#  fechavto   :date
#  created_at :datetime
#  updated_at :datetime
#

class Factura < ActiveRecord::Base
  belongs_to :cliente
  has_many :facturarecibo
  has_many :facturanotacredito
  has_many :facturadetalles
#:through :


  validates :fecha, :presence => true
  validates :numero, :presence => true, :length => { :maximum => 10 }, :uniqueness => true, :numericality => true

  accepts_nested_attributes_for :facturadetalles, :allow_destroy => true, :reject_if => :all_blank

  attr_accessible :numero, :cliente_id, :fechavto, :fecha, :facturadetalles_attributes 
  
  attr_accessor :totalfactura, :count_items
  
  scope :no_actualizados, where("updated_at IS NULL" )
  scope :vencidas, where("fechavto < ?", Date.today)
  scope :por_cliente, lambda {|cliente| where(:cliente_id => cliente) }
  
  def totalfactura
    #facturadetalles.sum("preciounitario * cantidad * (1+(tasaiva/100))") 
    facturadetalles.all.sum(&:totalitem)
  end

  def totalivafactura
    #facturadetalles.sum("preciounitario * cantidad * (1+(tasaiva/100))") 
    facturadetalles.all.sum(&:totalivaitem)
  end

  def count_items
    facturadetalles.count
  end  
end
