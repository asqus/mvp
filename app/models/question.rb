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
  
  def didvote?(user, yaynay)
  	uqrel = uq_relations.find_by_user_id(user.id)
    if(uqrel == nil || uqrel.yaynay != yaynay)
      return false
    else
      return true
    end
  end

  def vote!(user,yaynay)
  	uq_relations.create!(yaynay: yaynay, user_id: user.id, question_id: id)
  end

  def unvote!(user)
  	uq_relations.find_by_user_id(user.id).destroy
  end
  
  default_scope order: 'questions.created_at DESC'
end
