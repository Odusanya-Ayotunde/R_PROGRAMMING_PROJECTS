#introduction to sorting and grouping

df <- data.frame(Titanic)
View(df)
class(df)
library(dplyr)
library(readr)

#the summarise and group_by functions can be found in the dplyr, so you have to install the dplyr before you can use the sum function.
number_passengers <- df %>%
  summarise(num_passengers = sum(Freq))

class <- df %>%
  group_by(Class)%>%
  summarise(sum(Freq))
View(class)

sex <- df %>%
  select(Sex, Age, Freq)%>%
  filter(Sex == "Female")
View(sex)

#the arrange function is also found the dplyr.
arr <- df %>%
  arrange(desc(Freq))
View(arr)






library("readr")
library("dplyr")
library("ggplot2")

path <- "C:/Users/Trainee1/Documents/AYOKEYS/R_class/R_PROGRAMMING_PROJECTS/Brewery_data.csv"
df <- read_csv(path)
View(df)

col <- ifelse(df$COUNTRIES == "Nigeria" | df$COUNTRIES == "Ghana", 
              "Anglophone", "Francophone")
df2 <- df %>%
  mutate(TERRITORY = col, .after="COUNTRIES")
View(df2)

df3 <- df2$YEARS == 2018 | df2$YEARS == 2019
new_df <- df2[df3, ]
View(new_df)
franc <- new_df[new_df$TERRITORY == "Francophone", ]
View(franc)

#the [] is to produce the dataframe of a variable or data set

franc2 <- franc %>%
  select(BRANDS, QUANTITY)%>%
  group_by(BRANDS)%>%
  summarise(sum_qty = sum(QUANTITY))
ff <- franc2[order(franc2$sum_qty, decreasing = TRUE),]
View(ff)
slice(ff,1:3)
ff %>%
  ggplot(aes(BRANDS,sum_qty))+
  geom_col(position = "dodge")+
  coord_flip()+
  labs(title = "Most Consumed Brands",
       subtitle = "the Anglophone Territory")  
df %>% 
  ggplot(aes(QUANTITY))+
  geom_his()


#coord_flip is to flip the graph, so if you remove the coord_flip from the code, the original graph would appear.
#slice is to select from the whole dataframe. i.e. slice(ff,1:3) helped to select the first 3 highest data

