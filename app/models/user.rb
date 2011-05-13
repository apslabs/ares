# == Schema Information
# Schema version: 20110513125147
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  reset_password_token :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer         default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  rol_id               :integer
#  empresa_id           :integer
#
# Indexes
#
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_and_belongs_to_many :empresas
  has_many :clientes, :through => :empresas, :source => :empresas_users
  belongs_to :rol
  belongs_to :empresa
  
#  has_one :current_company, :class_name => "Empresa", :conditions => {:default_company => true}, :through => :empresas
# todo : leer AR.rubyonrails.org
  
  def set_current_company(company_id)
     update_attribute(:empresa_id,company_id)     #transaccional e integrado
  end

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :empresas_users_attributes

#  def rol
#     @role = Rol.all()
#     @role[rol_id]
#  end

  alias_method :current_company, :empresa  # alias para el nombre del metodo

end
