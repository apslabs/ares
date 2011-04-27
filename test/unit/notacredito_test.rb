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

require 'test_helper'

class NotacreditoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
