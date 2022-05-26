#to find vectors in another vector

d <- c('a', 'b', 'c', 'e', 'j')
t <- c('g', 'k', 'l', 'a', 'e', 'c')
for(i in d){
  if(i %in% t){
    print(i)
  }
}

#to find vectors not in another vector

d <- c('a', 'b', 'c', 'e', 'j')
t <- c('g', 'k', 'l', 'a', 'e', 'c')
d[!(d %in% t)]

#           OR
           
d <- c('a', 'b', 'c', 'e', 'j')
t <- c('g', 'k', 'l', 'a', 'e', 'c')
`%!in%` <- Negate(`%in%`)
for(i in d){
  if (i %!in% t){
    print(i)
  }
}


# to attach integers to strings

value <- readline(prompt = "enter your number: ")
value2 <- readline(prompt = "enter second number: ")
print(value + value2)
#(this won't work)

value <- readline(prompt = "enter your number: ")
value2 <- readline(prompt = "enter second number: ")
print(as.integer(value) + as.integer(value2))
#(this would work)


# to permutate a vector

perm <- readline(prompt="enter value: ")
count <- nchar(perm)
def_count <- 1
for (i in 1:count){
  def_count <- i * def_count
}
print(paste(perm, "can be arranged", def_count, "times", sep=" "))


# to convert fehrenheit to celsius 

temp <- as.numeric(readline(prompt="enter temperature value: "))
unit <- tolower(readline(prompt="enter unit(F/C): "))
if (unit == 'f'){
  celcius <- (9/5) * (temp -32)
  print(paste("the temperature value is", celcius, "degrees celcius", sep=" "))
} else if (unit == 'c'){
  fahr <- (5/9) * (temp + 32)
  print(paste("the temperature value is", fahr,"degrees fahrenheit", sep= " "))
} else {
  print("invalid input")
}

