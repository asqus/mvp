class User < ActiveRecord::Base
  attr_accessible :address, :birthdate, :email, :name, :password
end
