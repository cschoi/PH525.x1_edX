setwd("../Week2/")
getwd()

dat <- read.csv("../dagdata/inst/extdata/femaleMiceWeights.csv")
str(dat)
head(dat)

a <- mean(dat[13:24,2])
b <- mean(dat[1:12, 2])
a-b 

s <- split(dat[,2], dat[,1])
s
str(s)
stripchart(s, vertical = T, col=1:2)
abline(sapply(s, mean), col=1:2)


sum(s[["hf"]]< sapply(s, mean)[["chow"]])

sum(s[["chow"]] > sapply(s,mean)[["hf"]])


## sample()
