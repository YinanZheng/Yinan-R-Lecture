##################################################
##
##  Introduction to R
##  NN-HAM/U54 Supplemental Lecture
##  10/3/2020
##
##  Yinan Zheng
##
##################################################




#####################################
# RStudio theme ----
#####################################

# Dark theme is recommended (good for your eyes!)
# Tools --> Global Options... --> Appearance --> Editor theme
# Personal preference: Tomorrow Night Bright




#####################################
# Basic R syntax ----
#####################################

# Write free text as comment, starting with "#"
# Ctrl + Enter to run the current line of code OR selection
# You can run the code by clicking the "Run" button but keyboard shortcut is recommended

# R data ----
170
"Adam"
TRUE

c(170, 178, 185)
c(74.7, 80.2, 72.5)

c("Adam", "Jack", "Tim")
c("74.7", "80.2", "72.5")

c(TRUE, FALSE, FALSE)

# Note the coloring feature RStudio provides!




# Assign data to R objects ----

# First of all, how to choose a correct object name in R?

# Names must start with a letter or a dot
# Names should contain only letters, numbers, underscore characters (_), and dots (.)
# You can’t use the special keywords as names

# RStudio makes it easier: if the name is colored by white completely, 
# then it is a legit object name!

num # correct
num1 # correct
.num1 # correct
num. # correct
nu.m # correct
nu_m # correct

1num # wrong
nu+m # wrong

if # wrong, reserved word in R
for # wrong, reserved word in R
break # wrong, reserved word in R
function # wrong, reserved word in R

# Assign data to R object (note the changes in "Environment" window)
# Short cut for <-: "Alt" + "-"
num1 <- c(170, 178, 185)
num2 <- c(74.7, 80.2, 72.5)

char1 <- c("Adam", "Jack", "Tim")
char2 <- c("74.7", "80.2", "72.5")

logi <- c(TRUE, FALSE, FALSE)




# Data object type ----
# Three core data types: numeric, character, logical
class(num1)
class(num2)

class(char1)
class(char2)

class(logi)

# Note that R automatically figured out the data type for us!

# Data types can be coveted using "as." commands
as.character(num1)
as.numeric(char1) # does not work!
as.numeric(char2) # this works
as.numeric(logi)
as.logical(num1)
as.logical(c(0, 1, 0))

# Special data type: NA ("not applicable": to represent missing data)

# by default NA is logical
class(NA)

# but NA can be any data type
class(as.character(NA))
class(as.numeric(NA))

c(1, 2, NA, 3)
c("Apple", NA, "Orange")
c(TRUE, NA, FALSE)

# handy commands to check missing data
x <- c(1, 2, NA, 3, 4, NA, 5, 6, 7, NA, 8, 9, NA, 10, 11, NA, 12)
is.na(x)
sum(is.na(x))
which(is.na(x))

# Note, "NA" is just character, not real NA!




# Data object structure ----

# The data structure is a particular way of organizing data in a computer so that 
# it can be used effectively

# Four major data structure: vector, matrix, data frame, list

# vector:
# num1, num2, char1, char2, logi are all vectors

# matrix:
# create matrix by command "matrix"
mat <- matrix(1:9, nrow = 3, ncol = 3)
mat 
class(mat)

# create matrix by binding vectors (by row or by column)
mat1 <- rbind(num1, num2)
mat1
class(mat1)

mat2 <- cbind(num1, num2)
mat2
class(mat2)

# you can combine number with characters BUT number will be forced to be character:
cbind(num1, char1)
cbind(char1, logi)
cbind(num1, logi) # logical data converted to 0/1 if bind with numeric

# data frame: (allows us to make a dataset with various data type!)
df <- data.frame(Name = char1, Height = num1, Weight = num2, Cancer = logi, stringsAsFactors = FALSE)
df
class(df)

# row names (not specified, by default 1:N will be generated)
rownames(df)

# column names (variable names)
colnames(df)

# use '$' sign to access variables in data frame (Note RStudio's variable name autocomplete feature)
df$Name
df$Height
df$Weight
df$Cancer

# or use variable name to access variable data
df[, "Name"]

# data type of variable in data frame are not affecting others
class(df$Name)
class(df$Height)
class(df$Weight)
class(df$Cancer)




# Operators ----

# Arithmetic operators
# +   Addition
# –   Subtraction
# *   Multiplication
# /   Division
# ^   Exponent
# %%  Modulus (Remainder from division)

# Relational operators
# <   Less than
# >   Greater than
# <=	Less than or equal to
# >=	Greater than or equal to
# ==	Equal to
# !=	Not equal to

# Operator	Description
# !   NOT
# &   AND
# |   OR




# Manipulate data object ----

# Data preview
# head() and tail()
longVec <- 1:1000
head(longVec)
tail(longVec)

# More useful to inspect a dataset
longMat <- matrix(1:90, nrow = 30)
head(longMat)
tail(longMat)

longDf <- as.data.frame(longMat)
head(longDf)
tail(longDf)
dim(longDf)
nrow(longDf)
ncol(longDf)

# Subsetting
# subset using square brackets:
mat[2, 2]
mat[1:3, 1:2]

df[1, ] # first row, all columns
df[, 2] # all rows, second column
df[c(1,3), c(1,4)] # first and thrid rows, first and fourth columns

# subset using command "subset"
subset(df, Height > 175) # records for those who are taller than 175
subset(df, Cancer) # records for those who had cancer

# Add new a variable
df$Age <- c(76, 56, 62)
df

# Remove a variable
df$Age <- NULL
df

# Sum and Average
sum(df$Cancer)
mean(df$Height)

# Change variable names
colnames(df)[c(2,3)] <- c("Height_cm", "Weight_kg")
df




# “if” statement ----
x <- 5
x <- -2

if (x > 0)
{
 print("x is positive")
} else {
  print("x is not positive")
}

# else is optional




# “for” loop ----

# count even number in x:
x <- c(2,5,3,9,15,8,11,6,24,68,44,25,36,57,24,47,14,13,2,6,3,9,14,27,44)

count <- 0
for (val in x) # "val" will take each of the value from "x" one by one and execute the code
{ 
  if(val %% 2 == 0) # if the remainder of the division of "val" by 2 is 0
  {
    count = count+1
  }
}
print(count)

# simple solution:
sum(x %% 2 == 0)




# Build your own function ----

# Note: all the "commands" we used above are functions!

# Write a function that can calculate BMI
calculate.BMI <- function(weight, height)
{
  bmi <- weight/height^2
  return(bmi)
}

# Run function
calculate.BMI(75, 1.75)

# Create a BMI variable using our function
df$BMI <- calculate.BMI(df$Weight_kg, df$Height_cm/100)
df




#####################################
# R demo analysis ----
#####################################

# The Effect of Vitamin C on Tooth Growth in Guinea Pigs

# First, set up your project folder (Code-Data-Results structure)

# Set your working directory.
# Note the direction of slash. Windows: forward slash "/", iOS: back slash "\"
setwd("")

# Note the change of current working directory in Console!

# Load data:
# Method 1:
# load data from web directly
toothGrowth <- read.csv("https://raw.githubusercontent.com/YinanZheng/Yinan-R-Lecture/master/Data/ToothGrowth.csv")
toothGrowth

# Method 2:
# load data from local (download it from github first and put it in the "Data" folder)
toothGrowth <- read.csv("")
toothGrowth

# Inspect data
head(toothGrowth)
dim(toothGrowth)
str(toothGrowth)

# Sample size in each supplement-dosage subgroups:
table(toothGrowth$supp, toothGrowth$dose)

# boxplot by dose (using R base graph functions)
par(mfrow = c(1,3))
boxplot(len ~ supp, data = subset(ToothGrowth, dose == 0.5), main = "0.5 mg/day", ylab = "Tooth length")
boxplot(len ~ supp, data = subset(ToothGrowth, dose == 1), main = "1.0 mg/day", ylab = "Tooth length")
boxplot(len ~ supp, data = subset(ToothGrowth, dose == 2), main = "2.0 mg/day", ylab = "Tooth length")


# A better plot using package: ggplot2
install.packages("ggplot2")

library(ggplot2)
qplot(supp, len, data = ToothGrowth, 
      facets = ~dose, 
      main = "Tooth growth of guinea pigs by supplement type and dosage (mg)",
      xlab = "Supplement type", 
      ylab = "Tooth length") + geom_boxplot(aes(fill = supp))


# t-test between supplement in each dosage 
ttestsByDose <- data.frame()
for (d in c(0.5, 1, 2)) 
{
  # Subset data by dose
  datSub <- subset(ToothGrowth, dose == d)
  
  # Run t-test
  tTest <- t.test(len ~ supp, paired = FALSE, var.equal = FALSE, 
                   data = datSub, alternative = "two.sided")
  
  # combine results
  ttestsByDose <- rbind(ttestsByDose, data.frame(dose = d, 
                                               mean_len_OJ = mean(datSub$len[datSub$supp == "OJ"]),
                                               mean_len_VC = mean(datSub$len[datSub$supp == "VC"]),
                                               t = tTest$statistic, 
                                               std_err = tTest$stderr,
                                               p_value = tTest$p.value))
  
  # use if statement to output significance
  if(tTest$p.value < 0.05)
  {
    message("Dosage = ", d, " mg/day: t-test is significant (p = ", tTest$p.value, ")")
  } else {
    message("Dosage = ", d, " mg/day: t-test is not significant (p = ", tTest$p.value, ")")
  }
}

ttestsByDose

# save results into a csv file
write.csv(ttestsByDose, "./Results/ToothGrowth_supplement_ttest_by_dose.csv", row.names = FALSE)


## End