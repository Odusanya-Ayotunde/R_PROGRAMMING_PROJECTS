library("readr")

path <- "C:/Users/USER/Desktop/Data 1/diabetes.csv"
df <- read_csv(path)
View(df)

#not_outcome <- !(df$Outcome == 1)
not_outcome <- df$Outcome != 1
a <- df[not_outcome, ]
View(a)

####--------------------------------------------------------------
load.path <- function( path_val){
  df2 <- read_csv(path_val)
  return (df2)
}


new.function <- function(df2){
  county <- df2$COUNTRIES
  territories  <- c()
  for (i in county){
    if (i == "Nigeria" | i == "Ghana"){
      territories <- c(territories, "Anglophone")
    } else {
      territories <- c(territories, "Francophone")
    }
  }
  return (territories)
}

add.dataframe <- function(df2, territories){
  df3 <- mutate(df2, TERRITORY=territories)
  return (df3)
}


# territory <- data.frame(
#   TERRITORY <- territories
# )
# print(territory)


path_val<- "C:/Users/USER/Desktop/Data 1/Assignment/Brewery_data.csv"
x <- load.path(path_val)
new_territory <- new.function(x)
new_df <- add.dataframe(x, new_territory)
print(new_territory)
print(new_df)
View(new_df)


###3-----------------------------------------------------------




df4 <- df2 %>% mutate(TERRITORY=territories,
                      .after=COUNTRIES)
View(df4)


total_profit <- sum(df3$PROFIT)
print(total_profit)

a_y <- df3$TERRITORY == "Anglophone"
anglo <- df3[a_y, ]
View(anglo)
anglo_profit <- sum(anglo$PROFIT)
print(anglo_profit)