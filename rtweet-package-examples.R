# load library
library(rtweet)

# streaming API example 1
tweets1 <- stream_tweets(lookup_coords("london, uk"), timeout=60)

# streaming API example 2
tweets2 <- stream_tweets("cats", timeout=60)

# rest API example 1
tweets3 <- search_tweets("#rstats", n=15000)

# rest API example 2
tweets4 <- search_tweets("lang:en", geocode=lookup_coords("usa"), n=10000, include_rts=FALSE)
