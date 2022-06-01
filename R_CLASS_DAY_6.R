

fact_func <- function(x){
  str_count <- nchar(x)
  fact <- 1
  for (i in str_count){
    fact <- fact * i
  }
  return (fact)
}

p <- fact_func("jamie")
print (p)




































sum_dev <- function(vector_val){
  sum_val <- 0
  for (i in vector_val){
    sum_val <- sum_val + i
  }
  return (sum_val)
}

mean_vector <- function(sum_val, vector_val){
  count_vec <- length(vector_val)
  mean.val <- sum_val/count_vec
  return (mean.val)
}

values <- c(3, 6, 8, 5, 7, 9, 12)
h <- sum_dev(values)
g <- mean_vector(h, values)
print(h)
print (g)








#class starts here

sum_dev <- function(vector_val){
  sum_val <- 0
  for (i in vector_val){
    sum_val <- sum_val + i
  }
  return (sum_val)
}

mean_vector <- function(sum_val, vector_val){
  count_vec <- length(vector_val)
  mean.val <- sum_val/count_vec
  return (mean.val)
}

ind_flat <- function(values, mean.val){
  
}


values <- c(3, 6, 8, 5, 7, 9, 12)
h <- sum_dev(values)
g <- mean_vector(h, values)
print(h)
print (g)





fact_func <- function(x){
  str_count <- nchar(x)
  fact <- 1
  for (i in 1:str_count){
    fact <- fact * i
    
  }
  return (fact)
}

mean_val <- function(fact, x){
  len_x <- nchar(x)
  formular <- fact/len_x
  return (formular)
}

p <- fact_func("jamie")
x <- mean_val(p, "jamie")
print(p)
print(x)


#######standard dev from here#########

sum_dev <- function(vector_val){
  sum_val <- 0
  for (i in vector_val){
    sum_val <- sum_val + i
  }
  return (sum_val)
}

mean_vector <- function(sum_val, vector_val){
  count_vec <- length(vector_val)
  mean.val <- sum_val/count_vec
  return (mean.val)
  
}


ind_flat <- function(vector_val, mean.val){
  p_vec <- c()
  for (i in vector_val){
    p <- (i - mean.val)**2
    p_vec <- c(p_vec, p)
  }
  return (p_vec)
}

sum_vect <- function(p_vec){
  sum_vec <- 0
  for (i in p_vec){
    sum_vec <- i + sum_vec
  }
  return (sum_vec)
}


val_vector <- c(3, 6, 8, 3, 5, 9, 11)
h <- sum_dev(val_vector)
g <- mean_vector(h,val_vector)
vect_ret <- ind_flat(val_vector, g)
sum_myvec <- sum_vect(vect_ret)
print(g)
print(h)
print(vect_ret)
print(sum_myvec)