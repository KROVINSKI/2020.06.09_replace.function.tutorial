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











data1 <- data                      # Replicate Data
data1[data1 == "A"] <- "xxx"  


data2 <- data                     # Replicate Data
data2[data2 == "f2"] <- "YYY"


data2 <- data                      # Replicate Data
data2$x4 <-


data1[data1 == "A"] <- "xxx"