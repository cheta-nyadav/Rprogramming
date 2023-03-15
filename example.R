library(tidyverse)
library(skimr)
library(janitor)

bookings_df <- read_csv("GL0bk8O2Sja9G5PDtko2uQ_31e445d7ca64417eb45aeaa08ec90bf1_hotel_bookings.csv")

#playing with data and playing with it and viewing
head(bookings_df)
summarise(bookings_df)
str(bookings_df)
View(bookings_df)
glimpse(bookings_df)
skim_without_charts(bookings_df)

trimmed_df <- bookings_df%>%
  select(hotel,is_canceled,lead_time)

#renaming to hotel_type
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename( hotel_type= hotel)


#Another common task is to either split or combine data in different columns. In this example, you can combine the arrival month and year into one column using the unite() function: 
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))
example_df

