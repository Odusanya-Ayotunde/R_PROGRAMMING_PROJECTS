name_v <- c('janeth', 'kola', 'nemii', 'bolaji')
for (i in name_v) {
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper (y)
  print(b)
}


name_v <- c('janeth', 'kola', 'nemii', 'bolaji')
for (i in name_v) {
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper (y)
  fullname <- paste(cap, b, sep="")
  print(fullname)
}


name_v <- c('janeth', 'kola', 'nemii', 'bolaji')
new_names <- c()
for (i in name_v) {
  y <- substr(i, 1,1)
  b <- substr(i, 2, nchar(i))
  cap <- toupper (y)
  fullname <- paste(cap, b, sep="")
  new_names <- c(new_names, fullname)
}
print(new_names)

#to merge the names without seperating them

first_name <- c("james", "kurt", "gerald")
last_name <- c("matt","boolean", "filia")
if (length(first_name) == length(last_name)){
for (k in 1:length(first_name)){
  full_name <- paste(first_name[k], last_name[k], sep="")
  print (full_name)
}
}else {
  print ("no you cant!!!")
}


#to merge the names and  seperating them

first_name <- c("james", "kurt", "gerald")
last_name <- c("matt","boolean", "filia")
if (length(first_name) == length(last_name)){
  for (k in 1:length(first_name)){
    full_name <- paste(first_name[k], last_name[k], sep=" ")
    print (full_name)
  }
}else {
  print ("no you cant!!!")
}



#Given a vector and asked to find the median

numbers <- c(3,7,2,8,9,4)
sort(numbers)


numbers <- c(3,7,2,8,9,4)
sort(numbers)
new_numbers <- sort(numbers)
print(new_numbers)

numbers <- c(3,7,2,8,9,4)
new_numbers <- sort(numbers)
mid <- length(new_numbers)/2
index <- round (mid)
med <- new_numbers [index]
print (med)
print(new_numbers)


numbers <- c(3,7,2,8,9,4,11,4,13,7)
new_numbers <- sort(numbers)
mid <- length(new_numbers)/2
index <- round (mid)
a_index <- index + 1
if (length(numbers)%%2!=0){
  med <- new_numbers[index]
  print (new_numbers)
  print(print("the median of the list is", med, sep= " "))
} else if (length(numbers)%%2==0){
  med <- (new_numbers[index] + new_numbers [a_index])/2
  print (new_numbers)
  print (paste("the median of the list is", med, sep=" "))
} else {
  print ("array cant be manipulated!!")
}

