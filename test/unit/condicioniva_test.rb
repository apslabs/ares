# == Schema Information
# Schema version: 20110512124317
#
# Table name: condicionivas
#
#  id         :integer         not null, primary key
#  detalle    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  letra      :string(255)
#

require 'test_helper'

class CondicionivaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
