# remember for day 7, how to import data on R.
# we repeat thesame process to inport diabetes data on the computer and brewery_data on the system or device.


library("readr")
path <- "C:/Users/Trainee1/Documents/AYOKEYS/diabetes.csv"
df <- read.csv(path)
View(df)


#to find information on the data, that the outcome is not 1

not_outcome <- !(df$Outcome == 1)
a <- df[not_outcome, ]
View(a)

          #   or

not_outcome <- df$Outcome != 1
a <- df[not_outcome, ]
View(a)

library("readr")
path2 <- "C:/Users/Trainee1/Documents/AYOKEYS/R_class/R_PROGRAMMING_PROJECTS/Brewery_data.csv"
df2 <- read.csv(path2)
View(df2)

last_three_years <- unique(df2$YEARS)
print(last_three_years)

countries <- unique(df2$COUNTRIES)
print(countries)

county <- df2$COUNTRIES
territories <- c()
for (i in county){
  if (i == "Nigeria" | i == "Ghana"){
    territories <- c(territories, "Anglophone")
  } else {
    territories <- c(territories, "Francophone")
  }
}
territory <- data.frame(
  TERRITORY <- territories
)
print(territory)




















