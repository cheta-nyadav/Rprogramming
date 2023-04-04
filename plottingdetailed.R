library(ggplot2)

View(diamonds)
ggplot(data=diamonds)+
  geom_point(mapping=aes(x=price, y=cut,color=cut))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut))

#the color attribute works differntly for bar plots
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,color=cut))
#it adds it to the outline just
#to addit to the insides we have fill option

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=cut))

#USING FACET FUNCTION TO DISPLAY DATA IN NEW WAYS
#helps us displya smaller groups of subsets of ourr data
#Facetting is an excellent way to look at categorical data. 
#This is where we split up the graphs and create a graph for each category.
#We will learn about two basic functions
#facet_wrap()    &   facet_grid()
libray(palmerpenguins)
View(penguins)

ggplot(data=penguins)+
  geom_point(mapping=aes(y=body_mass_g, x=island,color=species))+
  facet_wrap(~species)

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color, fill=cut))+
  facet_wrap(~cut)


#facet_grid() function splits the graph vertically by the ifrst varibale 
#and horizontally by the values of second variable

ggplot(data=penguins)+
  geom_point(mapping=aes(y=body_mass_g, x=flipper_length_mm,color=species))+
  facet_grid(sex~species)

