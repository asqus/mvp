# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Question < ActiveRecord::Base
  attr_accessible :body, :title, :user, :upCache, :downCache, :rankValue, :official_id

  belongs_to :official
  belongs_to :user

  has_many :questions, dependent: :destroy
  has_many :oq_relations, dependent: :destroy
  has_many :responses, dependent: :destroy
  has_many :uq_relations, foreign_key: "user_id", dependent: :destroy
  has_many :voters, through: :uq_relations, source: :user
  has_many :comments, as: :commentable

  validates :user_id, presence: true
  validates :official_id, presence: true

  def calcRank
    rankValue = upCache - downCache
    update_attributes(:rankValue => rankValue)
  end

end
