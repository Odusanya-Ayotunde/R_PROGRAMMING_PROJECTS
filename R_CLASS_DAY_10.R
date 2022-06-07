library("readr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
install.packages("lubridate")
library("lubridate")


path <- "C:/Users/Trainee1/Documents/AYOKEYS/R_class/R_PROGRAMMING_PROJECTS/finnstats/FinData.csv"
df <- read_csv(path)
View(df)
print(colnames(df))

clean_df <- clean_names(df)
print(colnames(clean_df))
View(clean_df)

tabyl(clean_df, last_name)

for (i in colnames(clean_df)){
  summ <- tabyl(clean_df, i)
  print(summ)
}


for (i in colnames(clean_df)){
  formatt <- clean_df %>% tabyl(i) %>%
    adorn_pct_formatting(digits=2, affix_sign=TRUE)
  print(formatt)
}

clean_df %>% tabyl(employee_status, full_time) %>% adorn_totals()

clean_df %>% tabyl(employee_status, full_time) %>%
  adorn_totals(where = c("row", "col")) 

clean_df %>% tabyl(employee_status, full_time, subject)

for (i in colnames(clean_df)){
  m <- clean_df %>% tabyl(1: i) %>% adorn_totals()
  print(m)
}

#to remove empty rows

new_clean <- clean_df %>% remove_empty(which = c("rows"))
View(new_clean)

#to remove empty columns

clean_new <- new_clean %>% remove_empty(which = c("cols"))
View(clean_new)

# to check duplicate data in a data frame

clean_new %>% get_dupes(first_name)
dat <- clean_new %>% get_dupes(first_name, certification_10)
View(dat)

#          or 

clean_new %>% get_dupes(first_name)
dat <- clean_new %>% get_dupes(first_name, certification_9)
View(dat)




filtered_one <- clean_new %>% filter(!grepl('/', hire_date))
View(filtered_one)
filtered_two <- clean_new %>% filter(grepl('/', hire_date))
View(filtered_two)

num_date <- as.numeric(filtered_one$hire_date)
clean_date <- excel_numeric_to_date(num_date)
clean_date

clean_one <- filtered_one %>% mutate(hire_date = clean_date)
View(clean_one)

new_dt <- mdy(filtered_two$hire_date)
clean_two <- filtered_two %>% mutate(hire_date = new_dt)
View(clean_two)

new_df <- rbind(clean_one, clean_two)
View(new_df)


# continuation from day 9

# to check a non-value in a dataframe.

# {for (i in colnames(new_df)){
# k <- (sum(is.na(new_df)))
# p <- paste (i, "=>", k, sep = " ")
# print(p)
# }}


# to find the mode for a column in a dataframe
#command >>>>> (table(data_frame$column_name))

print(table(new_df$subject))
print(table(new_df$certification_9))
print(table(new_df$certification_10))

new_df$subject[is.na(new_df$subject)] <- "English"
new_df$certificate_9[is.na(new_df$certificate_9)] <- "Physical_ed"
new_df$certificate_10[is.na(new_df$certificate_10)] <- "Theater"


#to get the distinct value in a dataframe.
print(unique(new_df$subject))


#splitting the data frame % numbers and #NA

colnames(new_df)
filtered_percent <- new_df %>% filter(!grepl( '%', percent_allocated))
filtered_percent2 <- new_df %>% filter(grepl( '%', percent_allocated))
View(filtered_percent)

# to store a dataframe from Rlanguage to excel

write.csv(df, "name_of_file.csv", row.names = FALSE)

#eg. 
write.csv(filtered_percent, "store_here.csv", row.names = FALSE)

#to place it in a particular data path
write.csv(clean_two, "store_here2.csv", row.names = FALSE)

