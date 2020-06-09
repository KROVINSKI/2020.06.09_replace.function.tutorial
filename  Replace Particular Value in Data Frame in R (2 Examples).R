# Hello World

# Title: Replace Particular Value in Data Frame in R (2 Examples)
# Author: Statistics Globe with Note'ski s
# Date: June 2020



#********************************
# Table of Contents
#********************************
# 1.0  Introduction of Example Data
# 2.0  Example 1: Replace Character or Numeric Values in Data Frame
# 3.0  Example 2: Replace Factor Values in Data Frame
# 4.0  Replace functino







#********************************
# 1.0  Introduction of Example Data
#********************************
 
# 
# Introduction of Example Data
# The examples of this R programming tutorial are based 
# on the following example data frame in R:
# 



data <- data.frame(x1 = 1:5,
                   x2 = LETTERS[1:5],
                   x3 = c("A", "C", "A", "A", "B"),
                   x4 = factor(c("f1", "f2", "f3", "f2", "f1")),
                   stringsAsFactors = FALSE)

data
print(data)
# 
# > print(data)
# x1 x2 x3 x4
# 1  1  A  A f1
# 2  2  B  C f2
# 3  3  C  A f3
# 4  4  D  A f2
# 5  5  E  B f1


# NARR: Our example data consists of five rows and four variables. 
#       The first column is numeric, the second and third columns 
#       are characters, and the fourth column is a factor.  





#********************************
# 2.0  Example 1: Replace Character or Numeric Values in Data Frame
#********************************


## 2.1 Replacing Characters
#Let’s first replicate our original data in a new data object:
data1 <- data                      # Replicate data 
                                   # data1 into data    
data1[data1 == "A"] <- "xxx"  


## 2.1a Replacing Characters- & Across a data frame
# Now, let’s assume that we want to change 
# every character value “A” to the character string “XXX”
# "A" to "XXX"

# > print(data)
# x1 x2 x3 x4
# 1  1  'A'A f1
# 2  2  B  C f2
# 3  3  C 'A f3
# 4  4  D 'A f2
# 5  5  E  B f1

# Four A values

data1[data1 == "A"] <- "XXX"
# for when data equals exactly "A" change it to "XXX"

data1
#   x1  x2  x3 x4
# 1  1 XXX XXX f1
# 2  2   B   C f2
# 3  3   C XXX f3
# 4  4   D XXX f2
# 5  5   E   B f1

# we could replace a value by NA instead of a character.





#********************************
# Example 2: Replace Factor Values in Data Frame
#********************************

# Factor Values
# Again, we are replicating our original data first

data2 <- data                     # Replicate Data
data2[data2 == "f2"] <- "YYY"
data2

# Every element with the factor level f1 was replaced by NA. 
# Definitely not what we wanted.
# > data2
# x1 x2 x3   x4
# 1  1  A  A   f1
# 2  2  B  C <NA>
# 3  3  C  A   f3
# 4  4  D  A <NA>
# 5  5  E  B   f1

# the class of variables is incredibly different
# If we want to convert a factor value in a data 
# frame to a different value, we have to convert 
# the factor to the character class first:


#********************************
# Example 2.a: Replace Factor Values in Data Frame- Covert the Factor
#********************************


data2 <- data                          # replicating the data
data2$x4 <- as.character(data2$x4)     # convert to character
data2[data2 == "f2"] <- "YYY"
data2$x4 <- as.factor(data2$x4)

print(data2)



#********************************
# 3.0 Replace Function
#********************************
#
#
# Replace Values In A Vector
# replace replaces the values in x with indices given in list 
# by those given in values. If necessary, the values in values 
# are recycled.
# 
# 
replace(x, list, values)


replace(
  letters, 
  c(1, 5, 9, 15, 21), 
  c("A", "E", "I", "O", "U")
)

# note the capital letter substitutions 







#********************************
# End of Document | End of Script
#********************************