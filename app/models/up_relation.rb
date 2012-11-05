class UpRelation < ActiveRecord::Base
  attr_accessible :poll_id, :user_id, :updown, :answerValue

  belongs_to :poll, class_name: "Poll"
  belongs_to :user, class_name: "User"

  validates :poll_id, presence: true
  validates :user_id, presence: true
end
