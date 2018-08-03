# ls()
# rm(list = ls())
# rm(list=lsf.str())

# integer
x <- 2L
typeof(x)

# double
y <- 2.5
typeof(y)

# complex
z <- 3 + 2i
typeof(z)

# character
a <- "h"
typeof(a)

# character
b <- "hello world"
typeof(b)

# logical
q <- TRUE
typeof(q)

q2 <- FALSE
typeof(q2)

A <- 10
B <- 5
C <- A + B

var1 <- 2.5
var2 <- 4

result <- var1/var2
result

answer <- sqrt(var2)
answer

greeting <- "Hello"
name <- "Ujang"
message <- paste(greeting, name)
message

4 < 5
10 > 100
4 == 5
# ==
# !=
# <
# >
# <=
# >=
# !
# |
# &
# isTRUE

# while loop
while(TRUE){
    print("Hello")
}

counter <- 1
while(counter < 12){
    print(counter)
    counter <- counter + 1
}

for(i in 1:5){
    print("Hello R")
}

for(i in 5:10){
    print("Hello R")
}

rm(answer)
x <- rnorm(1)
if(x > 1){
    answer <- "Greater than 1"
}else{
    if(x >= -1){
        answer <- "Between -1 and 1"
    } else {
        answer <- "Less than - 1"    
    }
}

answer


rm(answer)
x <- rnorm(1)
if(x > 1){
    answer <- "Greater than 1"
}else if(x >= -1){
        answer <- "Between -1 and 1"
} else {
    answer <- "Less than - 1"    
}

answer