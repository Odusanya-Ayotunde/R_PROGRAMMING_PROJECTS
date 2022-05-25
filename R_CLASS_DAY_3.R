#to calculate mean

v <- c(6,6.7,10,15,12.5,8)
print (sum(v))

v <- c(6,6.7,10,15,12.5,8)
sum_v <- 0
for (i in v){
  sum_v <- (i + sum_v)
  print(sum_v)
}

v <- c(6,6.7,10,15,12.5,8)
sum_v <- 0
for (i in v){
  sum_v <- (i + sum_v)
}
print(sum_v)

mean_value <-length(v)
print(mean_value)

mean_value <-sum_v/length(v)
print(mean_value)


#to find the lenth of a vector and length of characters

t_vector <- c("kate", "moses", "jammie", "fobimy")
print(t_vector)

t_vector <- c("kate", "moses", "jammie", "fobimy")
print(length(t_vector))

t_vector <- c("kate", "moses", "jammie", "fobimy")
#print(length(t_vector))
for (i in t_vector){
  print (nchar(i))
}



#to find the standard deviation of numbers

data <- c(4,10,12,13,5,8.9,1.4,1.3)
n <- length(data)
sum_data <-0
for (i in data){
  sum_data <-i + sum_data
}
mean_data <- sum_data
print(mean_data)

data <- c(4,10,12,13,5,8.9,1.4,1.3)
n <- length(data)
sum_data <-0
for (i in data){
  sum_data <- i + sum_data
}
mean_data <- sum_data/n
#print(mean_data)
data_i <- c()
for  (i in data){
  a <- i - mean_data
  data_i <- c(data_i, (a**2))
}
#print(data_i)
sum_idata <-0
for (i in data_i){
  sum_idata <- i + sum_idata
}
#print(sum_idata)
std_dev <- (sum_idata/n)**(1/2)
print(std_dev)



#to find the maximum value of the set of vector

m <- c(3,10,22,11,8,12)
max_val <- m[1]
for (i in m){
  if (i > max_val){
    max_val <- i
  }
}
print(max_val)

#To find the minimum value of the set of vector

m <- c(3,10,22,11,8,12)
min_val <- m[1]
for (i in m){
  if (i < min_val){
    min_val <- i
  }
}
print(min_val)


#To find the difference between the maximum and minimum value of the set

m <- c(3,10,22,11,8,12)
max_val <- m[1]
for (i in m){
  if (i > max_val){
    max_val <- i
  }
}
#print(max_val)
min_val <- m[1]
for (i in m){
  if (i < min_val){
    min_val <- i
  }
}
#print(min_val)
print(max_val - min_val)
