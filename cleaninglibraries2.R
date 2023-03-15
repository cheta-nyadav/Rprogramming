library(tidyverse)
library("here")
library("janitor")
library(tidyr)
penguins %>% arrange(bill_length_mm)
#returns a tible with data sorted in ascending order
#to make it descending we can add - sign
penguins %>% arrange(-bill_length_mm)

#to actually save the data in a file or dataframe
#since rn it is only gtting displayed on console

penguindatasorted<- penguins %>% arrange(bill_length_mm)
View(penguindatasorted)

#You can also sort by data using the group by function.
#Group by is usually combined with other functions.
#For example, we might want to group by a certain 
#column and then perform an operation on those groups.

penguins %>% group_by(island) %>% drop_na() %>%summarise(mean_billlength=mean(bill_length_mm))
