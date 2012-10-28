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
  has_many :responses, :dependent => :destroy
  has_many :user_question_relationship_with_yaynays, foreign_key: "user_id", dependent: :destroy
  has_many :users, through: :user_question_relationship_with_yaynays, source: :user_id


  validates :user_id, presence: true

  def yaynay!(yaynay, user_id)
  	user_question_relationship_with_yaynays.create!(yaynay: yaynay, user_id: user_id)
  end
  
  default_scope order: 'questions.created_at DESC'
end
