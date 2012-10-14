class Response < ActiveRecord::Base
  attr_accessible :body, :question_id, :user_id

  belongs_to :user
  belongs_to :question
end
