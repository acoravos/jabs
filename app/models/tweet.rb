class Tweet < ActiveRecord::Base

  #original tweet-user relationship
  belongs_to :user

  #set up retweet join table
  has_many :retweets
  has_many :users, through: :retweets

end
