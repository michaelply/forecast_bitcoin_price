library(readr)
##################Combine all data into one dataset####################
bitcoin <- read_csv("bitcoinity_data.csv")
str(bitcoin)
google <- read_csv("bitcoin_google_trend.csv", skip=2)
str(google)

######
dataset <- data.frame(cbind(bitcoin[-1,],google))
names(dataset) <- c("bitcoin_time","bitcoin_price","bitcoin_volume","google_time","google_trend")
dataset$week <- 1:260
head(dataset)
str(dataset)
######
write_csv(dataset,path = "bitcoin_data")
