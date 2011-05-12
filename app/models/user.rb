# == Schema Information
# Schema version: 20110512124317
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
#  has_one :current_company, :class_name => "Empresa", :conditions => {:default_company => true}, :through => :empresas
# todo : leer AR.rubyonrails.org
  
  def set_current_company(company_id)
     Empresa.transaction do
       current_company.toggle!(:default_company) unless current_company.nil?
       empresas.find(company_id).toggle!(:default_company)
     end
     reload
   end

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :empresas_users_attributes

#  def rol
#     @role = Rol.all()
#     @role[rol_id]
#  end

def current_company
  empresas.where(:default_company => true).first
end

end
