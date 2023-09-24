# Various libraries
library(ggplot2)
library(dplyr)
library(tidyverse)
library(sf)  
library(rgdal)  
library(spData)  
library(spDataLarge) 
library(data.table)
library(sp)
library(rgdal)
library(mapview)
install.packages('mapview')


# Read in the files and look at them

bb = read.csv('/Users/MadamPresident/Desktop/ppg2008.csv')
bb

costco = read.csv('/Users/MadamPresident/Desktop/costcos-geocoded.csv')
costco  

#############
## Heatmap
# Chose columns & make the matrix
cols = bb %>% select(G, X3PA, FGA, PTS)
data  = as.matrix(cols)

d  = as.matrix(cols)

# Design the heatmap
heatmap(data, Colv = NA, 
        Rowv = NA, 
        scale = 'column', 
        col = blues9, 
        xlab = 'Points Attemped & Total', 
        ylab = 'Game', 
        main = 'Points per Game')


############
# Spatial Chart

# Map the Costcos
mapview(costco, 
        xcol = 'Longitude', 
        ycol = 'Latitude', 
        crs = 4326, 
        grid = FALSE)

############
# Contour Chart

# Set the variables to plot
x = cols$G
y = cols$PTS

# Make the plot
ggplot(data=cols, aes(x = x, y = y)) +
  geom_point(alpha = 0.5, color = 'darkblue') +
  geom_density2d(color = 'deepskyblue') +
  ggtitle('Points per Game') +
  labs(x = 'Games', y = 'Game Points')




