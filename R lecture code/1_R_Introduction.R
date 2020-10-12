##################################################
##
##  Introduction to R
##  NN-HAM/U54 Supplemental Lecture
##  10/3/2020
##
##  Yinan Zheng
##
##################################################

# Interactive Chart ---- 
# https://www.r-graph-gallery.com/interactive-charts.html

# RStudio theme ----
# Dark theme is recommended (good for your eyes!)
# Tools --> Global Options... --> Appearance --> Editor theme
# Personal preference: Merbivore Soft


# Use R ----

# Vanilla R
# x <- seq(1,10,0.1)
# y <- sin(x)
# plot(x, y)



# Basic R syntax ----

# Create data

c(1, 2, 3)
c("A", "B", "C")
c(TRUE, FALSE, FALSE)

1:10
10:1

seq(1, 10, 2)
rep(c(1, 2, 3), 5)



# Assign data to objects
# Data object type and structure
# Manipulate data object
# “if” statement
# “for” loop
# Function







# RStudio tips:


# 2. Magic autocomplete (the "Tab" key, complete code, find variables, find files) 

# Get function help and examples: ? or F1 



# Section naming with ----
#   Snippet (example: paste path, time stamp)
# Rename in Scope (Ctrl + Alt + Shift + M)
# Find and replace
# Ctrl + left click: View data, view function source

setwd("C:/Users/yzk256/Desktop/R Lecture")


calculate.BMI <- function(weight, height)
{
  bmi <- weight/height^2
  return(bmi)
}

calculate.BMI(75, 1.75)



# R naming convention ----

# 1. Strive for names that are concise and meaningful
# 2. Recommended naming convention:
# File names: underscore_separated, all lower case: e.g. Introduction_to_R.R
# Functions: period.separated, all lower case: e.g. calculate.BMI
# Variables: lowerCamelCase: e.g. addTaskCall
# 2 - Files organisation