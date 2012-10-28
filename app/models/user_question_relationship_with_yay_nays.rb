class UserQuestionRelationshipWithYayNays < ActiveRecord::Base
  attr_accessible :question_id, :user_id, :yaynay

  belongs_to :question, class_name: "Question"


  #validates :user_id, presence: true
  validates :question_id, presence: true


end
