library(xlsx)
library(tm)

datatext <- read.csv("namafile.csv", header = T)
data.cleaning=datatext$text
data.cleaning.text=Corpus(VectorSource(data.cleaning))

removeURL <- function(x) gsub("http[^[:space:]]*", "", x)
clean <- tm_map(data.cleaning.text, removeURL)

removeNL <- function(y) gsub("\n", " ", y)
clean <- tm_map(clean, removeNL)

removepipe <- function(z) gsub("<[^>]+>", "", z)
clean <- tm_map(clean, removepipe)

remove.mention <- function(z) gsub("@\\S+", "", z)
clean <- tm_map(clean, remove.mention)

remove.hashtag <- function(z) gsub("#\\S+", "", z)
clean <- tm_map(clean, remove.hashtag)

removeamp <- function(y) gsub("&amp;", "", y)
clean <- tm_map(clean, removeamp)

removetitik3 <- function(y) gsub("[[:punct:]]", "", y)
clean <- tm_map(clean, removetitik3)

remove.all <- function(xy) gsub("[^[:alpha:][:space:]]*", "", xy)
clean <- tm_map(clean,remove.all)

clean <- tm_map(clean, tolower)

clean <- tm_map(clean, stripWhitespace)


stopwordID <- "Stopword.txt"
cStopwordID<-readLines(stopwordID);
clean <- tm_map(clean, removeWords, cStopwordID)


dataframe=data.frame(text=unlist(sapply(clean, `[`)), stringsAsFactors=F)
View(dataframe)
write.csv(dataframe,file = 'Namafileoutput.csv')
