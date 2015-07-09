require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt


  has_many :leaders, foreign_key: "follower_id", class_name: "Following"
  has_many :leads, through: :leaders

  has_many :followers, foreign_key: "leader_id", class_name: "Following"
  has_many :follows, through: :followers




  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end



end
