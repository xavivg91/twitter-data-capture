# Twitter data capture

In this repository you can check out some examples of how to capture Twitter data using the REST and Streaming API: 

* **REST API**. Return any authorized tweets which match the search criteria. This search API searches against a sampling of recent Tweets published in the past 7 days. You can use the [`searchTwitter()`](https://www.rdocumentation.org/packages/twitteR/versions/1.1.9/topics/searchTwitter) and [`search_tweets()`](https://www.rdocumentation.org/packages/smappR/versions/0.5/topics/searchTweets) functions from the [twitterR](https://www.rdocumentation.org/packages/twitteR/versions/1.1.9) and [rtweet](https://rtweet.info/) packages, respectively.

* **Streaming API**. Opens a connection to Twitter’s Streaming API that will return public statuses that match one or more filter predicates. In other words, with this API you can capture Tweets in real time. Tweets can be filtered by keywords, users, language, and location. You can use the [`filterStream()`](https://www.rdocumentation.org/packages/streamR/versions/0.4.5/topics/filterStream) and [`streamtweets()`](https://www.rdocumentation.org/packages/rtweet/versions/0.4.0/topics/stream_tweets) functions from the [streamR](https://www.rdocumentation.org/packages/streamR/versions/0.4.5) and [rtweet](https://rtweet.info/) packages, respectively.

Using the rtweet package we can capture Twitter data more easily than with the other two. In fact, using this package it’s no longer necessary to obtain a developer account and create your own Twitter application. All you need is a Twitter account! 