library(ggplot2)
library(palmerpenguins)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))

#to differnetiate between each species by color
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species))

#to differnetiate between each species by shape & color
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species,shape=species))

#to differnetiate between each species by shape &size &color
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species,shape=species,size=species))

#for denser plots with overlpapping points use aplpha
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species,shape=species,alpha=species))

#to make all adata points a specific color
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g),color='pink')

#to change visulaization of graph that is bar charts or others
#lets see one that uses a smooth curve line and other uses points

#in othr words we'll chnage the geom which is any geometrical object
#usedto represent the data
ggplot(data=penguins)+
  geom_area(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g))


ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g,linetype=species))

#jitter is the visual property that helps in dense plots by adding small amount of
#random noise to overlapping points helping in distinguishing
#the points

#before
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))
#after
ggplot(data=penguins)+
  geom_jitter(mapping=aes(x=flipper_length_mm, y=body_mass_g))
