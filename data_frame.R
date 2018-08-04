stats <- read.csv(file.choose())
stats
rm(stats)
mywd <- "E:\\Projects\\Workshop\\r-az"

setwd(mywd)
getwd()
stats <- read.csv("DemographicData.csv")
stats

nrow(stats)
ncol(stats)

head(stats, n=10)
tail(stats)

str(stats) #str() runif() rnorm()
summary(stats)

stats
head(stats)
stats[3,"Birth.rate"]
stats$Country.Name
stats$Country.Name[2]

stats$Internet.users
stats$Internet.users[2]
stats[,"Internet.users"]

levels(stats$Income.Group)
levels(stats$Country.Name)


stats[1:10,]
stats[3:9,]
stats[c(4,100),]


stats[1,]
is.data.frame(stats[1,])
is.data.frame(stats[,1])
is.data.frame(stats[1,,drop=F])
is.data.frame(stats[,1,drop=F])

head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)

stats$xyz <- 1:5
head(stats)

stats$xyz <- NULL
stats$MyCalc <- NULL

head(stats)

filter <- stats$Internet.users < 2
stats[filter,]
stats[stats$Birth.rate > 40, ]
stats[stats$Birth.rate > 40 & stats$Internet.users, ]
stats[stats$Income.Group == "High income",]
levels(stats$Income.Group)

stats[stats$Country.Name == "Malta",]

library(ggplot2)
?qplot

qplot(data = stats, x=Internet.users)
qplot(data = stats, x=Income.Group, y=Birth.rate)
qplot(data = stats, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data = stats, x=Income.Group, y=Birth.rate, size=I(3), color=I("blue"))

qplot(data = stats, x=Income.Group, y=Birth.rate, geom="boxplot")

qplot(data = stats, x=Internet.users, y=Birth.rate)
qplot(data = stats, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data = stats, x=Internet.users, y=Birth.rate, size=I(4), color=I("red"))
qplot(data = stats, x=Internet.users, y=Birth.rate, size=I(5), color=Income.Group)

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)

colnames(mydf) <- c("Country", "Code", "Region")
head(mydf)

rm(mydf)

mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)
head(mydf)

head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(merged)
merged$Country <- NULL
str(merged)
tail(merged)

qplot(data = merged, x=Internet.users, y=Birth.rate)
qplot(data = merged, x=Internet.users, y=Birth.rate, color=Region)

# Shapes
qplot(data = merged, x=Internet.users, y=Birth.rate, color=Region, size=I(5), shape=I(17))

# Transparency
qplot(data = merged, x=Internet.users, y=Birth.rate, color=Region, size=I(5), shape=I(19), alpha=I(0.6))

# Title
qplot(data = merged, x=Internet.users, y=Birth.rate, color=Region, size=I(5), shape=I(19), alpha=I(0.6), main="Birth Rate vs Internet Users")