# == Schema Information
#
# Table name: officials
#
#  id          :integer          not null, primary key
#  position    :string(255)
#  name        :string(255)
#  district_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OfficialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
