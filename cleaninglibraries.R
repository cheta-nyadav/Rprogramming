install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
library("dplyr")

#here in this example we will be using a fun dataset
#palmerpenguin that has data of three penguin species
#like size, eye, wings etc
install.packages("palmerpenguins")
library("palmerpenguins")
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

#select species used to pull a subset of data
#from larger dataset following some condtiton

penguins %>%
  select(-species)


#the rename() function makes it easy to cgange coulmns name
penguins %>%
  rename(newisland=island)

#tomake some standard changes
rename_with(penguins, toupper)
rename_with(penguins, tolower)

#the clean name() function in janitor makes sure
#the cloumn names are unique and consistent

clean_names(penguins)
