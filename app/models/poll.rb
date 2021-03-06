# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ActiveRecord::Base
  attr_accessible :body, :title, :user, :poll_options_set_id, :official_id

  belongs_to :official
  belongs_to :user

  # has_many :answers, dependent: :destroy
  has_many :up_relations, foreign_key: "user_id", dependent: :destroy
  has_many :voters, through: :up_relations, source: :user_id
  has_many :comments, as: :commentable
  
  validates :user_id, presence: true
  validates :official_id, presence: true

  default_scope order: 'polls.created_at DESC'

end
