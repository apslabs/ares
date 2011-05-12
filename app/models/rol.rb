# == Schema Information
# Schema version: 20110512124317
#
# Table name: rols
#
#  id         :integer         not null, primary key
#  detalle    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Rol < ActiveRecord::Base
end
