#to do visualization, you have to install the RColourBrewer package so you can import some colours

install.packages("RColorBrewer")
install.packages("readr")
library(RColorBrewer)
library("dplyr")



library("readr")
path <- "C:/Users/Trainee1/Documents/AYOKEYS/Brewery_data.csv"
df <- read_csv(path)
View(df)

print(colnames)
plant_cost <- df$PLANT_COST
hist(plant_cost)

frame_df <- df[df$YEARS == 2019 & df$COUNTRIES == "Ghana", ]
View(frame_df)

plot(frame_df$PROFIT, type="l")

hist(df$PLANT_COST, breaks = 5, col=brewer.pal(4, "set3"),
     main="Histogram showing plant cost")

plot(frame_df$UNIT_PRICE, type = "l", 
     main='profit against month')

barplot(frame_df$UNIT_PRICE, col=brewer.pal(3, "set1"))

boxplot(frame_df$UNIT_PRICE~frame_df$MONTHS, col="red")

plot(x=frame_df$UNIT_PRICE, y=frame_df$PROFIT, col="red")

barplot(table(frame_df$BRANDS))
pie(table(frame_df$BRANDS))



#to do a scattered 3-D plot using the "iris" dataframe

View(iris)
class(iris)
library(magrittr)

install.packages(c("rgl", "car"))
library("car")

#--------------------------------------------------------------------------------
# scattter3d(Petal.width~Petal.Length+Sepal.Length | Species 
#            data=iris, fit='linear',
#            residuals=TRUE, parrarel=FALSE,
#            bg = "black",
#            axis.scale=TRUE,
#            grid=TRUE,
#            ellipsoid=FALSE
# >>>>>>>>>this did not work
#--------------------------------------------------------------------------------
  
a <- iris$Sepal.Length
b <- iris$Petal.Length
c <- iris$Petal.Width

scatter3d(x = a, y = b, z = c)
scatter3d(x = fame_df$UNIT_PRICE, y = frame_df$PROFIT,
          z = frame_df$QUANTITY)
