#Vector
#to store homogenous data together
#c is for construct/concatenate
#groups all values that can be refernced with #a single variable
#made by using c(x,y,z,...)
v1=c(1,2,3,4,5,22,1,3,4)
v2=c(T,F,F,TRUE)
v3=c("a","this","is","!")
v4=c("vector of vector",v3)
print(v4)
v5=c(v1,v2,v3)
v6<-as.factor(c("female","male","f","m"))

#List
#to store heterogeneous data together can also group various vectors into one
#made by using list(x,y,z,...)
#eg
list1=list(1,"helo",3)
l2=list(v1,v2,v4)


#FRAME
#data frame is similar to lists we have tags and functions associated with data frames, it is default type in r langugae
#data frames are list of vectors of equal length
d1=data.frame(v1,v2)
d2=data.frame(v2,v3)
d3=data.frame(col1name=v2,col2name=v3)
View(d2)

#MATRIX
#to store a vector in form of rows and columns, we specify the number of rows and columns and it breaks it into those numbers
#but here the no of rows and columns should be a multiple of the data length of vector so that it can broken properly and filled

#m2=matrix(data, nrow = rows, ncol = cols)
m1=matrix(v1,3,6)
m2=matrix(v2,2,2)
colnames(m1)
colnames(m2)


#INDEXING
#starts from 1
#1. VECTOR using [] : vec1[2]
#2. LIST using nested [[]] or$
#3. same for data frame
#4. for matrix [1,2]