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


data <- data.frame(x1 = 1:5,
                   x2 = LETTERS[1:5],
                   x3 = c("A", "C", "A", "A", "B"),
                   x4 = factor(c("f1", "f2", "f3", "f2", "f1")),
                   stringsAsFactors = FALSE)

data


data1 <- data                      # Replicate Data
data1[data1 == "A"] <- "xxx"  


data2 <- data                     # Replicate Data
data2[data2 == "f2"] <- "YYY"


data2 <- data                      # Replicate Data
data2$x4 <-


data1[data1 == "A"] <- "xxx"