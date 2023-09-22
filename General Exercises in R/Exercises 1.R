# Assignment: ASSIGNMENT 2

# Name: Oehler, Angie

# Date: 03/20/2020


# Use the appropriate R functions to answer the following questions:

#  1. What are the observational units in this study? The observational units are the groups of people.  We are studying how each group responded to the predetermined theme. One group was subjected to sports themes, and the other group got to experience a variety of topics.


# 2. Identify the variables mentioned in the narrative paragraph and determine which are categorical and quantitative?   The categorical variables are the two class sections.  The quantitative variables are the students' scores and the counts.  


# 3. Create one variable to hold a subset of your data set that contains only the Regular Section and one variable for the Sports Section.

# First, import scores.csv file:
scores <- read.csv("C:/Users/Madam President/Desktop/scores.csv")

# Create the subsets:
scores_sports <- subset(scores, Section == "Sports")
scores_regular <- subset(scores, Section == "Regular")

# View each subset:
scores_sports
scores_regular


# Use the Plot function to plot each Sections scores and the number of students achieving that score.

# import the ggplot library
library(ggplot2)


  
#  plot(x = scores_sports$Score, y = scores_sports$count, 
#       xlab = "Score", ylab = "Count", 
#       main = "Sports Session",
#       col = "blue")
  
#  plot(x = scores_regular$Score, y = scores_regular$count, 
#       xlab = "Score", ylab = "Count", 
#       main = "Regular Session",
#       col = "red") 
  
  
  mean(scores_regular$Score)
  mean(scores_sports$Score)
  
  mode(scores_regular$Score)
  mode(scores_sports$Score)
  
  plot(scores_sports$Score, scores_sports$count, 
       main = "Sports vs Regular Sessions",
       xlab = "Score", ylab = "Count", 
            col = "purple")
  points(scores_regular$Score,scores_regular$count, 
       col = "green") 
  legend("topleft",
         c("Sports", "Regular"),
         fill = c("purple", "green"))
  
  
  
  

  
  
  
  