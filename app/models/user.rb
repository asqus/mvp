class User < ActiveRecord::Base
  attr_accessible :address, :birthdate, :email, :name, :password

  has_many :responses
  has_many :questions
end
