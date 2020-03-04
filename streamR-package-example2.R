# load packages
library(streamR);

# load credentials
source('credentials.R')

# connect to Twitter stream a get messages
filterStream("tweets.json", track = c("Obama", "Trump" ), timeout = 20, oauth = cred);

# parse tweets
tweets.df <- parseTweets("tweets.json", simplify = TRUE);

# compute some measures
show(paste("Numero de tweets con #Obama:", length(grep("Obama", tweets.df$text, ignore.case = TRUE))));
show(paste("Numero de tweets con #Trump:", length(grep("Trump", tweets.df$text, ignore.case = TRUE))));