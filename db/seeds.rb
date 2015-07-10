User.create(username: "bik", password: "hello")
User.create(username: "john", password: "hello")
User.create(username: "sung", password: "hello")
User.create(username: "andrea", password: "hello")
User.create(username: "ian", password: "hello")

# (user_id: 1)Bik's post
Tweet.create(user_id: 1, post: "Bik's first tweet!")
Tweet.create(user_id: 1, post: "Bik's second tweet!")
Tweet.create(user_id: 1, post: "Bik's third tweet!")

# (user_id: 2)John's post
Tweet.create(user_id: 2, post: "John's first tweet!")
Tweet.create(user_id: 2, post: "John's second tweet!")
Tweet.create(user_id: 2, post: "John's third tweet!")

# (user_id: 3)Sung's post
Tweet.create(user_id: 3, post: "Sung's first tweet!")
Tweet.create(user_id: 3, post: "Sung's second tweet!")
Tweet.create(user_id: 3, post: "Sung's third tweet!")

# (user_id: 4)Andrea's post
Tweet.create(user_id: 4, post: "Andrea's first tweet!")
Tweet.create(user_id: 4, post: "Andrea's second tweet!")
Tweet.create(user_id: 4, post: "Andrea's third tweet!")

# (user_id: 5)Ian's post
Tweet.create(user_id: 5, post: "Ian's first tweet!")
Tweet.create(user_id: 5, post: "Ian's second tweet!")
Tweet.create(user_id: 5, post: "Ian's third tweet!")
# Total 15 tweets

# Retweets by bik, (user_id: 1)
Retweet.create(user_id: 1, tweet_id: 6)
Retweet.create(user_id: 1, tweet_id: 12)

# Retweets by john, (user_id: 2)
Retweet.create(user_id: 2, tweet_id: 1)
Retweet.create(user_id: 2, tweet_id: 15)

# Retweets by sung, (user_id: 3)
Retweet.create(user_id: 3, tweet_id: 4)
Retweet.create(user_id: 3, tweet_id: 9)

# Retweets by andrea, (user_id: 4)
Retweet.create(user_id: 4, tweet_id: 3)
Retweet.create(user_id: 4, tweet_id: 13)

# Retweets by ian, (user_id: 5)
Retweet.create(user_id: 5, tweet_id: 8)
Retweet.create(user_id: 5, tweet_id: 9)















