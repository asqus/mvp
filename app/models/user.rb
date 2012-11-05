# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  birthdate  :date
#  email      :string(255)
#  address    :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :address, :birthdate, :email, :name, :password, :password_confirmation
  has_secure_password

  has_many :responses
  has_many :questions, dependent: :destroy
  has_many :uq_relations, dependent: :destroy
  has_many :voted_questions, through: :uq_relations, source: :question
  has_many :up_relations, dependent: :destroy
  has_many :voted_polls, through: :up_relations, source: :poll


  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, presence: true
  validates :email, presence: true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def answerPoll?(poll, answer)
    uprel = up_relations.find_or_create_by_user_id_and_poll_id(id, poll.id)
    #uprel.
  end


  def didvoteQ?(question, yaynay)
    uqrel = uq_relations.find_by_question_id(question.id)
    if(uqrel == nil || uqrel.yaynay != yaynay)
      return false
    else
      return true
    end
  end

  def voteQ!(question,yaynay)
    uq_relations.create!(yaynay: yaynay, user_id: id, question_id: question.id)
  end


  def didvotepoll?(poll, updown)
    uprel = up_relations.find_by_poll_id(poll.id)
    if(uprel == nil || uprel.updown != updown)
      return false
    else
      return true
    end
  end


  def votepoll!(poll, updown)
    up_relations.create!(updown: updown, user_id: id, poll_id: poll.id)
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
