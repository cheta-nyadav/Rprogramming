

#pipes
#is a tool in R for expressing a sequence of multiple
#operations represented by "%>%"

#it takes the output of one statement and makes it
#the input of another statement
#importing data set

data("ToothGrowth")
View(ToothGrowth)
library("dplyr")

filtered_tg<- filter(ToothGrowth, dose==0.5)
arrange(filtered_tg,len)

#instead we can use nested function to save our lines of code
arrange(filter(ToothGrowth, dose==0.5),len)


# now we'll use a pipe to do our job
#tip;press ctrl+shift+m to get pipe operator

filtered_tgpipe <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

# finding mean length from both supplements
#orange juice oj and ascorbic acid vc
filtered_pipe <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len= mean(len, na.rm=T), .group="drop")
View(filtered_pipe)