# == Schema Information
# Schema version: 20110427202648
#
# Table name: notacreditos
#
#  id         :integer         not null, primary key
#  cliente_id :integer
#  fecha      :date
#  importe    :decimal(, )
#  numero     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Notacredito < ActiveRecord::Base
  belongs_to :cliente
  has_many :facturanotacredito
  
  validates :fecha, :presence => true
  validates :numero, :presence => true, :length => { :maximum => 10 }, :uniqueness => true, :numericality => true
  validates :importe, :presence => true, :numericality => true

  scope :no_actualizados, where("updated_at IS NULL" )
  scope :por_cliente, lambda {|cliente| where(:cliente_id => cliente) }
end
