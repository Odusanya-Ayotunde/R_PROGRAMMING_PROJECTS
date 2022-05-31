#writing functions

#function for volume
#for programmer
vol_cube <- function(l, b, h){
  vol_cube <- l*b*h
  print (vol_cube)
}

vol_cube(3, 4, 5)




#function for calculating age
#for programmer
age <- function(current_year, birth_year){
  age <- (current_year - birth_year)
print (age) 
}

age(2022,1995)

#for user interface
age <- function(current_year, birth_year, name){
  age <- (current_year - birth_year)
  z <- paste(name, "is", age, "years old", sep= " ")
  print (z) 
}
current_year <- as.numeric(readline(prompt = "enter current year: "))
birth_year <- as.numeric(readline(prompt = "enter birth year: "))
name <- readline(prompt = "enter name: ")

age(current_year, birth_year, name)




x <- 1:3
print(x)

y <- seq(2, 10, 3)
print(y)

print(sum(20:40))
print(mean(20:30))

value <- 50:10
d <- 40:99
mean_function <- function(value){
  len <- length(value)
  sum_value <- 0
  for (i in value ){
    sum_value = i + sum_value
  }
  mean_val <- sum_value/len
  mean_val
}

mean_function(d)








factorial_func <- function(x){
  count_val <- 1 :nchar(x)
  fac <- 1
  for (i in count_val){
    fac <- i*fac
    
  }
  print(fac)
}

factorial_func("katie")

volume_cube <- function(a, b, c){
  vol <- a*b*c
  print(vol)
}

volume_cube(30, 25, 40)



age_function <- function(c_y, b_y, name){
  age <- c_y - b_y
  z <- paste(name, "is ", age, "years old", sep = " ")
  print(z)
}
c_y <- as.numeric(readline(prompt="enter current year: "))
b_y <- as.numeric(readline(prompt="enter year of birth: "))
name <- readline(prompt="enter name: ")

age_function(c_y, b_y, name)

list_a <- list(c(1, 2, 3), c(2, 4, 6), c(7, 8, 9))
print(list_a[1])
