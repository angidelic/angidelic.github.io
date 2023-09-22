# Import and look at file
gss_survey <- read.csv("C:/Users/Madam President/Desktop/gss-2016.csv")
gss_survey

library(ggplot2)
library(tidyverse)
library(datasets)

# https://www.youtube.com/watch?v=cGb5iqhf0NU

ggplot(gss_survey, aes(SIBS, CHILDS)) +
    geom_point() +
    labs(title = "Children and Siblings", 
         x = "Siblings",
         y = "Children") +
    geom_smooth(method = lm, se = FALSE )


cor.test(gss_new$SIBS, gss_new$CHILDS, method = "spearman")


cor(gss_survey$SIBS, gss_survey$CHILDS, use = "complete.obs")

cor(gss_survey$SIBS, gss_survey$CHILDS, use = "complete.obs")^2 * 100





library(ggm)



cov(gss_survey$SIBS, gss_survey$CHILDS, use = "complete.obs")

str(gss_survey$SIBS)

pcor(c("SIBS","CHILDS", "SEX"), var(gss_new)) 


pcor(c("SIBS", "CHILDS"), ), var(gss_new))


library(ggplot2)



childs.1<- lm(CHILDS ~ SIBS, data = gss_new)
summary(childs.1)

library(dplyr)

# Remove nulls
gss_new <- gss_survey %>%
  select(SIBS,CHILDS,SEX) %>%
  na.omit()
 

gss_nonull <- gss_survey %>%
    select(SIBS,CHILDS) %>%
    na.omit()

gss_nonull
# Run the partial correlation using the data without nulls
pcor(c("SIBS","CHILDS", "SEX"), var(gss_new)) 
  
  
  
  
  
  ggplot(gss_survey, aes(x = SIBS)) + 
      geom_histogram(binwidth = 1, 
                     color = "black", 
                     fill = "deeppink3") + 
      labs(x = "Siblings", y = "Density", 
           title = "Siblings Graph")
  
  
  ggplot(gss_survey, aes(x = CHILDS)) + 
      geom_histogram(binwidth = 1, 
                     color = "black", 
                     fill = "deeppink3") + 
      labs(x = "Siblings", y = "Density", 
           title = "Children Graph")
  
  
  
  
  childs.1<- lm(CHILDS ~ SIBS, data = gss_new)
  summary(childs.1)
  
  
# Exmple: fit_1 <- lm(Volume ~ Girth, data = trees)
  # ex: predict(fit_1, data.frame(Girth = 18.2))
  
  predict(childs.1, data.frame(SIBS = 3))
  
  
  library(predict)
  
# Use the regression model childs.1  
  sibs_pred1 <- data.frame((SIBS = 3))
  predict(childs.1, newdata = sibs_pred1)
  
 # Use the regression model childs.1   
  sibs_pred2 <- data.frame((SIBS = 0))
  predict(childs.1, newdata = sibs_pred2)
  
  
  
  
  
  

