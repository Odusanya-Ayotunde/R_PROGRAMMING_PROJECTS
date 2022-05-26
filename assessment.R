# assessment
# a <- c(6,10,12,3,1)
# b <- c(4,13,8,9,5)
#find the standard deviation of m, m=a-b
#solve the  ((mean(a)/max(b))-((mean(b)/max(a)))
#median (a)/square root of the square of (min(b)+min(a))


#question 1: find the standard deviation of m, m=a-b
a <- c(6,10,12,3,1)
b <- c(4,13,8,9,5)
m <- (a-b)
#print (m)
p <- length(m)
sum_m <-0
for (i in m){
  sum_m <- i + sum_m
}
mean_m <- sum_m
#print (mean_m)
data_i <- c()
for (i in m){
  d <- i - mean_m
  data_i <- c(data_i, (d**2))
}
#print (data_i)
sum_idata <- 0
for (i in data_i){
  sum_idata <- i + sum_idata
}
#print (sum_idata)
std_dev <- (sum_idata/p)**(1/2)
print(std_dev)


#question 2: solve the  ((mean(a)/max(b))-((mean(b)/max(a)))

#step 1: find the mean of set a and b
a <- c(6,10,12,3,1)
e <- sum(a)
#print (e)
f <- length (a)
print (f)
mean_a <- (e/f)
print (mean_a)

b <- c(4,13,8,9,5)
g <- sum(b)
#print (g)
h <- (length (b))
#print (h)
mean_b <- (g/h)
print (mean_b)

#step 2: find the maximum value of a and b
a <- c(6,10,12,3,1)
max_a <- h[1]
for (j in a){
  if (j > max_a){
    max_a <- j
  }
}
print (max_a)
  
b <- c(4,13,8,9,5) 
max_b<- h[1]
for (k in b){
  if (k > max_b){
    max_b <- k
  }
}
print (max_b)

#step 3: solve

l <- (mean_a/max_b)
#print (l)
p <- (mean_b/max_a)
#print (p)
q <- (l-p)
print (q)


#question 3: median (a)/square root of the square of (min(b)+min(a))

# step 1: find the median of a
a <- c(6,10,12,3,1)
new_a <- sort (a)
print(new_a)
mid_a <- length(new_a)/2
print(mid_a)
index <- ceiling(mid_a)
print(index)
med <- new_a[index]
print(med)

#step 2: finding the square root of the square of (min(b)+min(a))
#step 2.1: find the minimum value of a and b

a <- c(6,10,12,3,1)
min_a <- h[1]
for (u in a){
  if (u < min_a){
    min_a <- u
  }
}
print (min_a)

b <- c(4,13,8,9,5) 
min_b <- h[1]
for (w in b){
  if (w < min_b){
    min_b <- w
  }
}
print(min_b)

#step 3: solve 
x <- (min_b - min_a)
print(x)
y <- med/x
print(y)


