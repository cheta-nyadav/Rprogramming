hotel_bookings <- read.csv("C:/Users/lenovo/Downloads/GL0bk8O2Sja9G5PDtko2uQ_31e445d7ca64417eb45aeaa08ec90bf1_hotel_bookings (1).csv")

hotel_bookings
View(hotel_bookings)

head(hotel_bookings)

library(ggplot2)
ggplot(data=hotel_bookings)+
  geom_point(mapping= aes(x=lead_time, y= children))

#You decide to create a bar chart showing each hotel type and market segment. You use different colors to represent each market segment:
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

#You decide to use the facet_wrap() function to create a separate plot for each market segment: 
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

library(tidyverse)

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))
View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
View(onlineta_city_hotels_v2)

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))
