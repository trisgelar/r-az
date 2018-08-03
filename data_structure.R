# vector
# elements are only in same type

myFirstVector <- c(3, 45, 56, 732)
myFirstVector

is.numeric(myFirstVector)
is.integer(myFirstVector)
is.double(myFirstVector)

#seq() #sequence - like ":"
#rep() #replicate

seq(1,15)
1:15
seq(1,15,2)

rep(1,15)
z <- seq(1,15,4)
z

rep(3,50)

x <- c(80,20)
y <- rep(x, 10)
x
y

x <- c(1,123,534, 13, 4)
y <- seq(201,250,11)
z <- rep("Hi!", 3)

x
y
z

w <- c("a", "b", "c", "d", "e")

w[1]
w[2]
w[3]
w[-1]
v <- w[-3]
v

w[1:3]
w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-5]
w[1:2]

x <- rnorm(5)

#R-specific programming loop
for(i in x){
    print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming lopp
for(j in 1:5){
    print(x[j])
}

N <- 10
a <- rnorm(N)
b <- rnorm(N)

c <- a * b
c
d <- rep(NA, N)

for(i in 1:N){
    d[i] <- a[i] * b[i]
}
d