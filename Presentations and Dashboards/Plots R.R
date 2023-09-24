library(ggplot2)
library(dplyr)
library(tidyverse)


# Read in the files and look at them

crime = read.csv('/Users/MadamPresident/Desktop/crimerates-by-state-2005.csv')
crime

# Remove scientific notations
options(scipen='999')

# Remove outlier and look at populatons under 10 million
murder10 = crime %>% filter(murder <= 10, population < 10000000)

# Make the scatter plot and add the regression ine
x <- murder10$murder
y <- murder10$population

plot(x, y, 
     main = 'Murder Rates in Populations under 10 Million',
     xlab = 'Murder rate', 
     ylab = 'Population', 
     pch = 19)
abline(lm(y ~ x, 
          data = murder), 
       col = 'green')
 

# Make the bubble chart with the same data
ggplot(murder10, aes(x, y, size = murder)) +
       geom_point(alpha=0.6, color = 'darkgreen') +
  scale_size(range = c(.9, 10))+
  ggtitle('Murder Rates in Populations under 10 Million') +
  labs(x = 'Murder Rate', y = 'Population') 


# Make the density map
ggplot(murder10, aes(murder)) + 
  geom_density(fill = 'darkgreen', alpha = .6) +  
  ggtitle('Density of Murder Rates in Populations under 10 Million') +
  labs(x = 'Murder Rate', y = 'Density') 



