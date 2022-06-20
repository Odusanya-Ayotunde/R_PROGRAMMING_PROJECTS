# what genre of movies make the highest profit with the lowest budget.
# 
# in the 2000s, which production company has the highest vote count.
# 
# which production company produces the highest run-time
# 
# what is the average revenue generated acted by Adam Sandler
# 
# between Matt Damon, Chris Hemsworth and Samuel L. jackson who has the highest rating.
# 
# which actor/actress has been involved in more action movies. 


#install.packages("stringr") .... for splitting strings in a data frame
#read_csv helps you to read the path for which you copied the file.

library(readr)
library(dplyr)
library(janitor)
library(ggplot2)
library(lubridate)
library(tidyverse)
library(data.table)
library(stringr)
library(ggthemes)

#...............CALLING DATA PATH............#

path <- "C:/Users/User/Desktop/tmdb-movies.csv"
movie_df <- read_csv(path)
clean_mv <- clean_names(movie_df)

#........................CHECKING COLUMNS WITH NA'S.....#

is.na(clean_mv)
colSums(is.na(clean_mv))
which(colSums(is.na(clean_mv))>0)
names(which(colSums(is.na(clean_mv))>0))

#............cleaning the Cast column(Splitting, DROPPING and Relocation)......#

# I) SPLITTING

clean_mv[c('cast_1', 'cast_2', 'cast_3', 'cast_4', 'cast_5')] <- str_split_fixed(clean_mv$cast, '\\|', 5)

# II) DROPPING THE CAST COLUMN

clean_mv2 <- subset(clean_mv, select = -cast)


# III) REPOSITIONING

clean_mv2 <- clean_mv2 %>% relocate(cast_1:cast_5, .before = homepage)


#................CLEANING THE DATE COLUMN USING LUBRIDATE,,,,,,,,,,,,#

clean_mv2$release_date <- mdy( clean_mv2$release_date)

#......REMOVING EMPTY ROWS AND COLS IF AVAILABLE...................#

clean_mv2 %>% remove_empty("rows")
clean_mv2 %>% remove_empty("cols")


#.............. splitting the data-frame based on data types and the finding mean and mode
#........................to replace zeros, empty spaces and NA's respectively......


# for numeric (MEAN)#
#step one  
clean_mv2 %>% select_if(is.numeric) %>% names()
#step two
f <- clean_mv2 %>% select_if(is.numeric)
#step three
ff <- f %>% 
  mutate_at(vars(popularity, budget, revenue, runtime, vote_count, vote_average,
                 release_year, budget_adj, revenue_adj), ~ replace(., . == 0, mean(., na.rm = TRUE)))
View(ff)


#for character(MODE) 
#step one  
clean_mv2 %>% select_if(is.character) %>% names()

#there's no need to find the mode since each movie is unique so we accept NA's and empty cells

#for date data type
#step one   
clean_mv2 %>% select_if(is.Date) %>% names()

#there's no need to find the mode since each movie is unique so we accept NA's and empty cells  




# ADDING THE CLEAN NUMERIC DATAFRAME BACK TO MY CLEAN_MV2 and calling it clean_movie_data 

# step one: cbind on both dataframes
clean_movie_data <- cbind(clean_mv2, ff)

#step two: dropping original respective columns using subset
clean_movie_data <- subset(clean_movie_data, select = c(-id, -popularity, -budget, -revenue, -runtime, -vote_count, 
                                                        -vote_average, -release_year, -budget_adj, -revenue_adj)) 

#step three: re-positioning columns  
clean_movie_data <- clean_movie_data %>% relocate(id, .before = imdb_id)
clean_movie_data <- clean_movie_data %>% relocate(popularity, budget, revenue, .before = original_title)

#REMOVING DUPLICATE USING UNIQUE ID
clean_movie_data %>% distinct(id, .keep_all = TRUE)
View(clean_movie_data)

#################################.....QUESTIONS.....#######################################################

# 1) GENRE OF MOVIE WITH THE HIGHEST REVENUE BUT WITH THE LEAST BUDGET

# i) Preferred selection

d <- clean_movie_data %>%
  select(id, genres,revenue, budget)%>%
  group_by(genres)%>%
  summarise(sum_revenue = sum(revenue, na.rm = TRUE), 
            sum_budget = sum(budget, na.rm = TRUE))

# ii) ordered using revenue in descending order

ordered_rev <- d[order(d$sum_revenue, decreasing = TRUE), ]  
View(ordered_rev)

# iii) limited by ten rows and order by budget in ascending order

first_10 <- slice(ordered_rev,1:10)

first_10 <- first_10[order(first_10$sum_budget),]
View(first_10)
# iv)  using ggplot2

first_10 %>% 
  ggplot(aes(sum_budget, sum_revenue, color = genres))+
  geom_point(size = 3)+
  #facet_wrap(~ genres)+
  labs(title = "PLOT SHOWING TOP TEN GENRE OF MOVIES",
       subtitle = "HIGHEST REVENUE GENERATED WITH LEAST BUDGET")

# 2) PRODUCTION COMPANY WITH THE HIGHEST VOTE COUNT IN THE 2000'S

unique(clean_movie_data$release_year)
yearly <- clean_movie_data %>%
  select(release_year, production_companies,vote_count)%>%
  drop_na(production_companies)%>%
  filter(release_year %in% c(2009,2001, 2002, 2003, 2005, 2006, 2004,
                             2007, 2008, 2000, 2010, 2011, 2012, 2013, 2014, 2015 ))%>%
  group_by(production_companies)%>%
  summarise(sum_vote = sum(vote_count))
# yearly <- yearly[which.max(yearly$sum_vote),]

# USING GGPLOT2 

yearly <- yearly[order(yearly$sum_vote, decreasing = TRUE),]
yearly <- slice(yearly, 1:7)
yearly %>%
  ggplot(aes(production_companies, sum_vote, fill = sum_vote))+
  geom_bar(stat = "identity")+ 
  coord_flip() +
  geom_text(aes(label = round(sum_vote)), 
            hjust = -.2)+
  ylim(c(0, 55000))+
  labs(title = "HIGHEST VOTE COUNT",
       subtitle = "TOP 7 PRODUCTION COMPANIES")+
  theme_clean()


# 3) PRODUCTION COMPANY WITH THE HIGHEST RUN TIME
run_time <- clean_movie_data %>%
  select(runtime, production_companies)%>%
  drop_na(production_companies)%>%
  group_by(production_companies)%>%
  summarise(sum_run_time = sum(runtime))
#run_time <- run_time[which.max(run_time$sum_run_time),]

# USING GGPLOT2

run_time <- run_time[order(run_time$sum_run_time, decreasing = TRUE),]
run_time <- slice(run_time, 1:7)
run_time %>%
  ggplot(aes(production_companies, sum_run_time, fill = production_companies))+
  geom_bar(stat = "identity")+
  coord_flip()+
  geom_text(aes(label = round(sum_run_time)), 
            hjust = -.2)+
  scale_fill_brewer(palette = "Set3")+
  ylim(c(0, 20000))+
  labs(title = "HIGHEST RUN-TIME",
       subtitle = "TOP 7 PRODUCTION COMPANIES")


# 4) AVERAGE REVENUE GENERATED BY ADAM SANDLER

a <- clean_movie_data %>%
  select(revenue, cast_1:cast_5)%>%
  filter_all(any_vars(str_detect(., pattern = "Adam Sandler")))%>%
  summarise(mean_revenue = mean(revenue))
View(a)


# 5) HIGHEST VOTE COUNT BETWEEN MATT DAMON, CHRIS HEMSWORTH AND 
#SAMUEL L. JACKSON

b <- clean_movie_data %>%
  select(vote_count, cast_1:cast_5)%>%
  filter_all(any_vars(str_detect(., pattern = c("Matt Damon",
                                                "Samuel L. Jackson", "Chris Hemsworth"))))

matt <- b%>%
  filter_all(any_vars(str_detect(., pattern = "Matt Damon")))%>%
  summarise(matt_vote_count = sum(vote_count))

sam <- b%>%
  filter_all(any_vars(str_detect(., pattern = "Samuel L. Jackson")))%>%
  summarise(sams_vote_count = sum(vote_count))

chris <- b%>%
  filter_all(any_vars(str_detect(., pattern = "Chris Hemsworth")))%>%
  summarise(chris_vote_count = sum(vote_count))

View(chris)


max(c(sam$sams_vote_count, 
      chris$chris_vote_count, matt$matt_vote_count))

# com_all <- cbind(matt, chris, sam)
# View(com_all)


# 6) ACTORS AND ACTRESSES INVOLVED IN MORE OF ACTION MOVIES

actors_actresses <- clean_movie_data%>%
  select(genres, cast_1, cast_2, cast_3, cast_4, cast_5)%>%
  group_by(genres)%>%
  filter_all(any_vars(str_detect(., pattern = "Action")))%>%
  distinct()

View(actors_actresses)
