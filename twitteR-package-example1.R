# load libraries
library(twitteR);

# load credentials
source('credentials.R')

# get two tweets about hashtag #data and print some information
tweets <- searchTwitter("#data", n=2, lang="en");
for(tweet in tweets) {
  # get one tweet and print some information
  show(paste("User '", tweet$getScreenName(), "' says: '", tweet$getText(), "'", sep=""));
}
