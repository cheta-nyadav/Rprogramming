#DATA VISUALIZATION
#Data visualization is one of the most important parts
#of data analysis. Powerful visuals show stake holders 
#what your data means in a clear and compelling way and 
#highlighting key insights. Visuals helped bring the 
#story of your data to life and make that story easier 
#to understand.
""" 
We'll take a close look at ggplot2
 G- Grammar of 
 G - Graphics
 Plot
The core cconcepts of ggplot2 include:
1. Aesthetics: The visual property of an object in plot
 e.g. the size, shape, color of data points
 
2. Geoms: The geometric object representing our data
  e.g. points, bar, line types
  
3. Facets: helps us to display smaller group or subsets of data
   e.g. we can create sepaare pplots of all data variable
   
4. Labels and annotations: helps us ccustomize the plot, by ading teexts
like titles, subtiles and comments etc.

"""

install.packages(“ggplot2”)
library(ggplot2)
library(palmerpenguins) 
data("penguins")

View(penguins)                  
ggplot(data=penguins)+geom_point(mapping =aes(x=flipper_length_mm,y=body_mass_g))                  
                  
