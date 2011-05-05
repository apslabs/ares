class Empresa < ActiveRecord::Base
  has_many :usuarioempresas
  has_many :users, :through => :usuarioempresas
end
