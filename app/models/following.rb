class Following < ActiveRecord::Base
  has_many :followers
  has_many :leaders
end
