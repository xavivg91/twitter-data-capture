# load packages
library(streamR);

# load credentials
source('credentials.R')

# connect to Twitter stream a get messages
filterStream("tweetsNBA.json", track = c("Harden", "Westbrook","Thunder","Rockets", "#NBASundays", "MVP"), timeout = 10800, oauth = cred);

# parse tweets
tweets.df <- parseTweets("tweetsNBA.json", simplify = TRUE);

# compute some measures
show(paste("Numero de tweets con #Harden:", length(grep("Harden", tweets.df$text, ignore.case = TRUE))));
show(paste("Numero de tweets con #Westbrook:", length(grep("Westbrook", tweets.df$text, ignore.case = TRUE))));
show(paste("Numero de tweets con #Thunder:", length(grep("Thunder", tweets.df$text, ignore.case = TRUE))));
show(paste("Numero de tweets con #Rockets:", length(grep("Rockets", tweets.df$text, ignore.case = TRUE))));
show(paste("Numero de tweets con #NBASundays:", length(grep("#NBASundays", tweets.df$text, ignore.case = TRUE))));
show(paste("Numero de tweets con #MVP:", length(grep("MVP", tweets.df$text, ignore.case = TRUE))));