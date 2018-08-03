View(Salary)

?matrix
my.data <- 1:20
my.data

A <- matrix(my.data, 4, 5)
A

B <- matrix(my.data, 4, 5, byrow = TRUE)
B

A[2,3]
B[2,5]

r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1,2,3)
C <- rbind(r1, r2, r3)
C

D <- cbind(r1, r2, r3)
D

Charlie <- 1:5
Charlie

#give names
names(Charlie) <- c("a", "b", "c", "d", "e")
Charlie

Charlie["d"]

names(Charlie) <- NULL
Charlie

temp.vec <- rep(c("a", "B", "zZ"), each = 3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <- c("How", "are", "you?")
colnames(Bravo) <- c("X", "Y", "Z")
Bravo

Bravo["are","Y"] <- 0
Bravo

Games
rownames(Games)
colnames(Games)

Games["LeBronJames", "2012"]

round(FieldGoals / Games,1)
round(MinutesPlayed / Games)

?matplot
matplot(t(FieldGoals), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz = F)

FieldGoals
View(t(FieldGoals))

x <- c("a", "b", "c", "d", "e")
x
x[1]

Games
Games[1:3,6:10]

Games[c(1,10), ]
Games[,c("2008","2009")]
Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])

Games[1,,drop=F]
Games[1,5,drop=F]


matplot(t(MinutesPlayed), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz = F)

# Data <- MinutesPlayed[1:3,]
Data <- MinutesPlayed[1,,drop=F]

matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players[1], col=c(1:4,6), pch=15:18, horiz = F)


