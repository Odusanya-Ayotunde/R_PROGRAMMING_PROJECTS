# EXERCISE 3.8.1
random_numbers <- sample(3:6, 50, replace = TRUE)
print(random_numbers)

# EXERCISE 3.8.2
x <- sample(1:50, 1)
y <- sample(2:5, 1)
print(y)
z <- x**y
print(z)


# EXERCISE 3.8.3
x <- sample(1:10, 1)
name <- "Hannah"
for (i in 1:x){
  print(name)
}

p_name <- function(x){
  d <- sample(1:10, 1)
  for (i in 1:d){
    print(x)
  }
}
a <- p_name('Ayo')
print(a)


# EXERCISE 3.8.4
x <- runif(3, 9, 10)
print(x)
random_num <- round(x, 2)
print(random_num)
#runif is a function used when you want to select a series of numbers
#round is a function used to round up numbers to a desired number of decimal places


# EXERCISE 3.8.5
random_num <- 1:50
for (i in random_num){
  y <- sample(1:i+1, 1, replace = FALSE)
  print(y)
}
#sample is a function used to display vectors before printing them

# EXERCISE 3.8.6
x <- as.numeric(readline(prompt = "Enter value for X: "))
y <- as.numeric(readline(prompt = "Enter value for Y: "))
z <- x - y
if (z < 0){
  z <- z * (-1)
}
answer <- z / (x + y)
print(answer)
#as.numeric is to change strings to numbers



# EXERCISE 3.8.7


# EXERCISE 3.8.8
num_of_secs <- as.numeric(readline(prompt = "Enter number of seconds: "))
mins <- floor(num_of_secs / 60)
sec <- num_of_secs %% 60
print(paste("You have", mins, "mins and", sec, "secs", "in", num_of_secs, "secs", sep = " "))


# EXERCISE 3.8.9
current_hour <- as.numeric(readline(prompt = "Enter hour: "))
future_hour <- as.numeric(readline(prompt = "How many hours ahead: "))
z <- current_hour + future_hour
future_time <- z %% 12
print(paste("Future time is", future_time, "O'clock", sep = " "))


# EXERCISE 3.8.10a
user_response_power <- as.numeric(readline(prompt = "Enter value for the power: "))
multiplier <- 10
last_digit_generator <- 2 ** user_response_power
last_digit <- last_digit_generator %% multiplier
print(last_digit)


# EXERCISE 3.8.10b
user_response_power <- as.numeric(readline(prompt = "Enter value for the power: "))
multiplier <- 100
last_digit_generator <- 2 ** user_response_power
last_digit <- last_digit_generator %% multiplier
print(last_digit)


# EXERCISE 3.8.10c
user_response_power <- as.numeric(readline(prompt = "Enter value for the power: "))
user_response_digits <- as.numeric(readline(prompt = "Enter value for last digits needed: "))
multiplier <- 10 ** user_response_digits
print(multiplier)
last_digit_generator <- 2 ** user_response_power
last_digit <- last_digit_generator %% multiplier
print(last_digit)


# EXERCISE 3.8.11
user_response_weight <- as.numeric(readline(prompt = "Enter value for the weight in kg: "))
x <- 2.205 * user_response_weight
pound_converter <- round(x, 1)
print(paste(pound_converter, "pounds", sep = " "))


# EXERCISE 3.8.12
user_response <- as.numeric(readline(prompt = "Enter Value: "))
fact <- 1
for (i in 1:user_response){
  fact <- fact * i
}
print(fact)


# EXERCISE 3.8.13
user_response <- as.numeric(readline(prompt = "Enter Value: "))
sine_val <- sin(user_response)
cosine_val <- cos(user_response)
tangent_val <- tan(user_response)
print(paste("The sine is: ", sine_val, "; cosine is: ", cosine_val, "; tangent is: ", tangent_val, sep = " "))


# EXERCISE 3.8.14
user_response <- as.numeric(readline(prompt = "Enter Value: "))
d <- user_response * 3.142/180
sine_val <- sin(d)
print(paste("The sine of", user_response, "is:", sine_val, sep = " "))

#3.142/180 is a constant to change from radian to degree, as R language calculates in radians



####------------------------------------------EXERCISE 4.5----------------------------------------------------####
# EXERCISE 4.5.1
user_response_length <- as.numeric(readline(prompt = "Enter value for the length in cm: "))
if (user_response_length < 0){
  print("Invalid entry")
} else {
  cm_converter <- 0.394 * user_response_weight
  print(paste(cm_converter, "inches", sep = " "))
}


# EXERCISE 4.5.2
temp <- as.numeric(readline(prompt = "Enter temperature value: "))
unit <- tolower(readline(prompt = "Enter unit(F/C): "))
if (unit == 'f'){
  celsius <- (5/9) * (temp - 32)
  print(paste("The temperature value is ", celsius, "degrees celsius", sep = " "))
} else if (unit == 'c'){
  fahr <- (9/5) * (temp + 32)
  print(paste("The temperature value is ", fahr, "degrees fahrenheit", sep = " "))
}



# EXERCISE 4.5.3
temperature <- as.numeric(readline(prompt = "Enter temperature value: "))
if (temperature < -273.15){
  print("The temperature is invalid because it is below absolute 0")
} else if(temperature == -273.15){
  print("The temperature is absolute 0")
} else if(temperature > -273.15 & temperature < 0){
  print("The temperature is below freezing")
} else if(temperature == 0){
  print("The temperature is at the freezing point")
} else if(temperature > 0 & temperature < 100){
  print("The temperature is in the normal range")
} else if(temperature == 100){
  print("The temperature is at the boiling point")
} else if (temperature > 100){
  print("The temperature is above boiling point")
}



# EXERCISE 4.5.4
credits <- as.numeric(readline(prompt = "Enter credits taken: "))
if (credits <= 23){
  print("You are a Freshman")
} else if (credits > 24 & credits < 53){
  print("You are a Sophomore")
} else if (credits >= 54 & credits <= 83){
  print("you are a Junior")
} else if (credits >= 84){
  print("You are a Senior")
}



# EXERCISE 4.5.5
user_response <- as.numeric(readline(prompt = "Enter value: "))
sum_divisors <- 0
for (i in 1:user_response){
  if (user_response %% i == 0){
    sum_divisors <- sum_divisors + i
  }
}
print(paste("The sum of divisors of", user_response, "is:", sum_divisors, sep = " "))



# EXERCISE 4.5.6
user_response <- 1:10000
perfect_numbers <- c()
for (j in user_response){
  index <- j
  i <- 1
  sum_divisors <- 0
  while (i < index) {
    if(index %% i == 0){
      sum_divisors <- sum_divisors + i
    }
    i = i + 1
  }
  if(sum_divisors == index){
    perfect_numbers <- c(perfect_numbers, index)
  }
}
print(perfect_numbers)



# EXERCISE 4.5.7
user_response <- as.numeric(readline(prompt = "Enter value: "))
divisors <- c()
perf <- c()
for (i in 1:user_response){
  if (user_response %% i == 0){
    divisors <- c(divisors, i)
  }
}
for (k in divisors){
  n <- k
  j <- 1
  while (j < n) {
    if (n / j == j){
      perf <- c(perf, n)
    }
    j <- j + 1
  }
}
if(length(perf) == 0){
  print(paste(user_response, "is squarefree", sep = " "))
} else {
  print(paste(user_response, "is not squarefree", sep = " "))
}



# EXERCISE 4.5.8
x <- as.numeric(readline(prompt = "Enter value: "))
y <- as.numeric(readline(prompt = "Enter value: "))
z <- as.numeric(readline(prompt = "Enter value: "))

replacer <- x

x <- y
y <- z
z <- replacer

print(x)
print(y)
print(z)

#replacer is not a function, but a name given to x to maintain the value of x, since after running z, the value of x would change to 5, so to maintain the value of x, I have to use a name to hold x.




# EXERCISE 4.5.9
perfect_squares <- 0
perfect_cubes <- 0
perfect_fifth <- 0

for (i in 1:1000){
  square_root <- floor(i ** (1/2))
  cube_root <- ceiling(i ** (1/3))
  fifth_root <- floor(i ** (1/5))
  
  if (square_root ** 2 != i){
    perfect_squares <- perfect_squares + 1
  }
  
  if (cube_root ** 3 != i){
    perfect_cubes <- perfect_cubes + 1
  }
  
  if (fifth_root ** 5 != i){
    perfect_fifth <- perfect_fifth + 1
  }
}
print(paste("Not perfect squares are: ", perfect_squares, 
            ", Not perfect cubes are: ", perfect_cubes, 
            ", Not perfect fifth are: ", perfect_fifth, 
            sep = ""))
#ceiling is a function used to round up numbers. eg. from 0.5-0.9
#flooring is a function used to round off numbers. eg. from 0.1 - 0.4


# EXERCISE 4.5.10
scores_vector <- c()
for (i in 1:10){
  user_response <- as.numeric(readline(prompt = "Enter values: "))
  scores_vector <- c(scores_vector, user_response)
}

####------4.5.10A------####
min_val <- scores_vector[1]
for (i in scores_vector){
  if (i < min_val){
    min_val <- i
  }
}
max_val <- scores_vector[1]
for (i in scores_vector){
  if (i > max_val){
    max_val <- i
  }
}
max_min_score <- c(min_val, max_val)
print(max_min_score)


####------4.5.10B------####
sum_scores <- 0
for(i in scores_vector){
  sum_scores <- sum_scores + i
}
length_scores <- length(scores_vector)
average_score <- sum_scores / length_scores
print(average_score)


####------4.5.10C------####
sort_scores <- sort(scores_vector)
second_highest <- sort_scores[which.max(sort_scores) - 1]
print(second_highest)
#sort is a function used to arrange vectors in their order of magnitude.

####------4.5.10D------####
for (score in scores_vector) {
  if(score > 100){
    print("There is a value greater than 100")
  }
}


####------4.5.10E------####
new_scores <- c()
for (i in sort_scores){
  if (i != sort_scores[which.min(sort_scores)] & i != sort_scores[which.min(sort_scores) + 1]){
    new_scores <- c(new_scores, i)
  }
}

sum_new_scores <- 0
for(i in new_scores){
  sum_new_scores <- sum_new_scores + i
}
length_new_scores <- length(new_scores)
average_new_scores <- sum_new_scores / length_new_scores
print(average_new_scores)

d <- c(5, 6, 8, 9, 12, 15)
for (i in d){
  fact_vec <- c()
  fact <- 1
  for (j in 1:i){
    fact <- fact * j
    fact_vec <- c(fact_vec, fact)
  }
  print(fact)
}

fact <- 1
for (i in 1:user_response){
  fact <- fact * i
}
print(fact)