# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  response   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
  attr_accessible :response
end
