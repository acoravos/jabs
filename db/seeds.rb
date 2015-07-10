User.create(username: "bik", password: "hello", email: "bikram.virk@gmail.com")
User.create(username: "john", password: "hello", email: "hessjohnt@gmail.com")
User.create(username: "sung", password: "hello", email: "sbchoi86@gmail.com")
User.create(username: "andrea", password: "hello", email: "acoravos@gmail.com")
User.create(username: "ian", password: "hello", email: "ianemailaddress@gmail.com")

# (user_id: 1)Bik's post
Tweet.create(user_id: 1, post: "I am hungry!")
Tweet.create(user_id: 1, post: "I am still hungry!")
Tweet.create(user_id: 1, post: "I am not hungry anymore, but I am thursty :( !")

# (user_id: 2)John's post
Tweet.create(user_id: 2, post: "John's first tweet!")
Tweet.create(user_id: 2, post: "John's second tweet!")
Tweet.create(user_id: 2, post: "John's third tweet!")

# (user_id: 3)Sung's post
Tweet.create(user_id: 3, post: "!!!!!!!!!!!!!!")
Tweet.create(user_id: 3, post: "I listened to Nina Simone today. #totesc00l")
Tweet.create(user_id: 3, post: "Pull that shit - John Hess-")

# (user_id: 4)Andrea's post
Tweet.create(user_id: 4, post: "Yay! I got into DBC. Excited for Phase 0.")
Tweet.create(user_id: 4, post: "What is this Ruby thing? And I have to learn JavaScript in one week?! No way.")
Tweet.create(user_id: 4, post: "Built Jabber in two days. NBD. Got this guys.")

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















