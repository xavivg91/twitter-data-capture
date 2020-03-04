# load package twitteR
library(twitteR);

# load credentials
source('credentials.R')

# search. Examples: #hastag, @user, etc
tweets <- searchTwitter("#Obama", n=10, lang="es");

# get only one tweet and analyse it
tweet <- tweets[[1]];
# show the low level structure of 'status'
show("STRUCTURE OF 'STATUS' OBJECT:");
str(tweet);
# get some basic information
show(paste("TWEET ID:",tweet$getId()));
show(paste("TEXT:",tweet$getText()));
show(paste("USER NAME:",tweet$getScreenName()));
show(paste("IS RETWEET?:",tweet$isRetweet));
show(paste("RETWEETED:",tweet$retweeted));

# get information about the user
user <- getUser(tweet$getScreenName());
# print structure of 'user'
show("STRUCTURE OF 'USER' OBJECT:");
str(user);
# get some information about the user
show(paste("USER ID:",user$getId()));
show(paste("USER NAME:",user$getName()));
show(paste("SCREEN NAME:",user$getScreenName()));
show(paste("LOCATION:",user$getLocation()));
show(paste("TWEETS NUMBER:",user$getStatusesCount()));
show(paste("FOLLOWERS:",user$getFollowersCount()));
show(paste("DESCRIPTION:",user$getDescription()));
