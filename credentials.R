require(twitteR)
library(ROAuth)

# Parameters configuration

reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"

options(httr_oauth_cache=T)

consumer_key <- "INTRODUCE YOUR CONSUMER KEY"
consumer_secret <- "INTRODUCE YOUR CONSUMER SECRET"
access_token <- "INTRODUCE YOUR ACCESS TOKEN"
access_secret <- "INTRODUCE YOUR ACCESS SECRET"

# twitteR authentication
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

# streamR authentication
credentials_file <- "my_oauth.Rdata"
if (file.exists(credentials_file)){
    load(credentials_file)
} else {
	cred <- OAuthFactory$new(consumerKey = consumer_key, consumerSecret = consumer_secret, requestURL = reqURL, accessURL = accessURL, authURL = authURL)
	cred$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))
	save(cred, file = credentials_file)
}
