# == Schema Information
# Schema version: 20110512124317
#
# Table name: clientes
#
#  id              :integer         not null, primary key
#  codigo          :string(255)
#  razonsocial     :string(255)
#  cuit            :string(255)
#  telefono        :string(255)
#  direccion       :string(255)
#  contacto        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  condicioniva_id :integer
#  empresa_id      :integer
#

class Cliente < ActiveRecord::Base
  has_many :facturas
  has_many :recibos
  has_many :notacreditos
  belongs_to :condicioniva
  belongs_to :empresa

  validates :cuit, :presence => true, :length => { :maximum => 11 }, :uniqueness => true
  validates :razonsocial, :presence => true
  validates :codigo, :presence => true, :uniqueness => true

  validates_numericality_of :cuit, :only_integer => true, :message => "solo numeros"
#  validates_inclusion_of :cuit, :in => 20000000000..38000000000, :message => "solo puede ingresar numeros entre 20 y 38."

  attr_accessible :razonsocial, :condicioniva_id, :codigo, :cuit, :telefono, :direccion, :contacto

  scope :sin_telefono, where("clientes.telefono = '' ")
  scope :no_actualizados, where("updated_at IS NULL" )
  scope :orden_alfabetico, order("clientes.razonsocial")  
  scope :del_usuario, lambda {|current_user| where(:empresa_id => current_user.empresas) }
  
  
  # control para 
  before_destroy :control_sin_comprobantes
  
  # funcionalidad: accesible_by(current_ability)) 
  # 1) rails g cancan:ability
  
  def control_sin_comprobantes
     #  raise "no puede borrar si posees comprobantes cargados" unless facturas.any? || recibos.any? || notacreditos.any

   if [facturas,recibos,notacreditos].any? {|cpbte| cpbte.any? }
     self.errors[:base] = "error que queres hacer?"
     return false
     #raise "estamos en el horno"
   end
   
    # raise "no puede borrar si posees comprobantes cargados" if [facturas,recibos,notacreditos].any? {|cpbte| cpbte.any? }
  end
end
