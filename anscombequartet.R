# Anscombe's quartet
#is a collection of four datasets that have identical summary statistics.
#hence the data summary alone becomes misleading, 
#so <b> data visualisation </b> becomes very essential and help us 
#discover things in our data that otherwise would remian hidden.


#Lets load the dataset package
install.packages('Tmisc')
library(dplyr)
library(tidyverse)
library(Tmisc)
data(quartet)
View(quartet)

#now the data can be summarized using various statistical methods

quartet %>%
  group_by(set) %>%
  summarize( mean(x), sd(x), mean(y),sd(y), cor(x,y))


#so we observe based on the statistical summaries we have created
#these data sets are identical.
#but sometimees just look at summarized data can be misleading

           
#we use plots to clearly see the difference. 
names(quartet)
ggplot(quartet, aes(x,y))+geom_point()+ geom_smooth(method=lm,se=FALSE)+facet_wrap( ~set)


#one more cool thing, is DatasauRus package.
install.packages('datasauRus')
library("datasauRus")

ggplot(datasaurus_dozen,aes(x=x,y=y,color=dataset))+geom_point()+theme_void() + theme(legend.position = "none")+facet_wrap(~dataset)
