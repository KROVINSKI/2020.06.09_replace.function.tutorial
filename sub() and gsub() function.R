# Hello World

# Title: sub & gsub R Functions (2 Examples) | Replace One or Multiple Patterns
# Author: Statistics Globe with Note'ski s
# Date: June 2020



#********************************
# Table of Contents
#********************************
#
# 
# 
# This article explains how to replace pattern in characters 
#   in the R programming language.
# The tutorial is based on the R functions sub() and gsub(). 
#   Let’s first have a look at the basic R syntax and the 
#   definitions of the two functions: 




# Basic R Syntax of sub & gsub:
#   
# sub("old", "new", x)
# gsub("old", "new", x)

# Definitions of sub & gsub:
#   
# The sub R function replaces the first match in a character string with new characters.
# The gsub R function replaces all matches in a character string with new characters.
# 
# 
# In the following tutorial, I’ll explain in two examples how to apply sub and gsub in R.
# All right. So first I’m going to compare the basic applications of sub vs. gsub…
# 
# 
# Example 1: sub vs. gsub R Functions
# Before we can apply sub and gsub, we need to create an example character string in R:

x <- "aaabbb"              # Example character string

# Our example character string contains the letters a and b (each of them three times).
# 
# In our example, we are going to replace the character pattern “a” with the new character “c”. Let’s see how this looks in practice:

sub("a", "c", x)           # Apply sub function in R
# "caabbb"





#********************************
# End of Document | End of Script
#********************************