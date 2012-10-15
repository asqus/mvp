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

class Official < ActiveRecord::Base
  attr_accessible :district_id, :name, :position
end
