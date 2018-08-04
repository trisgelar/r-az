getwd()
setwd("E:\\Projects\\Workshop\\r-az")
movies <- read.csv("Movie-Ratings.csv")
head(movies)

colnames(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

factor(movies$Year)
movies$Year <- factor(movies$Year)
str(movies)

summary(movies)

library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

ggplot(
    data=movies, 
    aes(
        x=CriticRating, 
        y=AudienceRating)) +
    geom_point()


ggplot(
    data=movies, 
    aes(
        x=CriticRating, 
        y=AudienceRating,
        color=Genre,
        size=BudgetMillions,
        alpha=I(0.3)
        )) +
    geom_point()

ggplot(
    data=movies, 
    aes(
        x=CriticRating, 
        y=AudienceRating,
        color=Genre,
        size=BudgetMillions,
        alpha=I(0.3)
        )) +
    geom_point()

p <- ggplot(
    data=movies, 
    aes(
        x=CriticRating, 
        y=AudienceRating,
        color=Genre,
        size=BudgetMillions,
        alpha=I(0.3)
        )) +
    geom_point()

q <- ggplot(
    data=movies, 
    aes(
        x=CriticRating, 
        y=AudienceRating,
        color=Genre,
        size=BudgetMillions,
        alpha=I(0.3)
        ))
    
q + geom_point()
q + geom_point(aes(size=CriticRating))
q + geom_point(aes(color=BudgetMillions))
q + geom_point(aes(x=BudgetMillions)) + xlab("Budget Millions $$$")

q + geom_line(size=1) + geom_point()

# mapping vs setting
r <- ggplot(data = movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

r + geom_point(aes(color=Genre))
r + geom_point(color="DarkGreen")

s <- ggplot(data = movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth=10)

s + geom_histogram(binwidth=10, aes(fill=Genre))

s + 
    geom_histogram(binwidth=10, aes(fill=Genre), color="Black")

s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position="stack")


t <- ggplot(data = movies, aes(x=AudienceRating))
t + geom_histogram(binwidth = 10, fill = "White", color="Blue")


t <- ggplot(data = movies)
t + geom_histogram(binwidth=10, aes(x=AudienceRating), fill="White", color="Blue")

t + geom_histogram(binwidth=10, aes(x=CriticRating), fill="White", color="Blue")

t + geom_histogram(binwidth=10, aes(x=CriticRating), fill="White", color="Blue")

?geom_smooth

u <- ggplot(data = movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
u + geom_point() + geom_smooth(fill=NA)

u <- ggplot(data = movies, aes(x=Genre, y=AudienceRating, color=Genre))
u + geom_boxplot(size=1.2) + geom_point()

# tip
u + geom_boxplot(size=1.2) + geom_jitter()

u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

# facets
v <- ggplot(data = movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth=10, aes(fill=Genre), color="Black")

v + 
    geom_histogram(binwidth=10, aes(fill=Genre), color="Black") +
    facet_grid(Genre~., scale="free")

w <- ggplot(data = movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
w + geom_point(size = 3)
w + geom_point(size = 3) +
    facet_grid(Genre~.)
w + geom_point(size = 3) +
    facet_grid(.~Year)

w + geom_point(size = 3) +
    geom_smooth()+
    facet_grid(Genre~Year)

w + geom_point(aes(size=BudgetMillions)) +
    geom_smooth()+
    facet_grid(Genre~Year)

# coordinat
m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, size=BudgetMillions, color=Genre))

m + geom_point()

m + geom_point() + 
    xlim(50,100) +
    ylim(50,100)

n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth=10, aes(fill=Genre), color="Black")

n + geom_histogram(binwidth=10, aes(fill=Genre), color="Black") + 
    ylim(0,50)

n + geom_histogram(binwidth=10, aes(fill=Genre), color="Black") + 
    coord_cartesian(ylim=c(0,50))

w + geom_point(aes(size=BudgetMillions)) +
    geom_smooth()+
    facet_grid(Genre~Year) + 
    coord_cartesian(ylim=c(0,100))

# Theme
o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth=10, aes(fill=Genre, color="Black"))

h + 
    xlab("Money Axis") + 
    ylab("Number of Movies") +
    ggtitle("Movie Budget Distribution") +
    theme(
        axis.title.x = element_text(color="DarkGreen", size=30),
        axis.title.y = element_text(color="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color="DrakBlue", size=40, family="Courier")
    )

?theme


