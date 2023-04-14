#Annotating and making plots more readable.
library(ggplot2)
library(palmerpenguins)


#title
#subtitle
#captions

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  labs(title="penguin data:from 2005 to 2007")+
  labs(subtitle="hello and visualise data",
       caption="this is my captionss")+
  annotate("text",x=210,y=3500,label="this is gentoo penguins",fontface="bold", size=4.5,angle=45)

#annotations

myplot<-ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  labs(title="penguin data:from 2005 to 2007")+
  labs(subtitle="hello and visualise data",
       caption="this is my captionss")

#to speicifically write soemthing or point something in specifi position of grph
myplot+annotate("text",x=210,y=3500,label="this is gentoo penguins")
myplot