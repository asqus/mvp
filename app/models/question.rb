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
  attr_accessible :body, :title

  belongs_to :user

  has_many :responses, dependent: :destroy
  has_many :uq_relations, foreign_key: "user_id", dependent: :destroy
  has_many :voters, through: :uq_relations, source: :user

  validates :user_id, presence: true
  
  default_scope order: 'questions.created_at DESC'
end
