User.create(username: "bik", password: "hello")
User.create(username: "john", password: "hello")

Tweet.create(user_id: 1, post: "My first tweet!")
Tweet.create(user_id: 1, post: "My second tweet!")

Retweet.create(user_id: 2, tweet_id: 1)
