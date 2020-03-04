require(twitteR)
library(ROAuth)

# Parameters configuration

reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"

options(httr_oauth_cache=T)

consumer_key <- "	ilXdbCWD7q5ZVU0N2tWSDWh7E"
consumer_secret <- "NvMe8rIQcTNwN9HNqEnxRbLlNZ05kc0vkNxvcroQIowMaAKgc5"
access_token <- "285779081-jmIRM488C3NgFSp3TAr60OAWaEseE4JG9NJDwCQJ"
access_secret <- "ND3E24NmCn17PsGcVobjkn8S7IIlCKQRddCpmZbgxYxjo"

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
