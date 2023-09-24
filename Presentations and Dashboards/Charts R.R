# Libraries and Packages
install.packages('ggm') 
library(ggm)
library(ggplot2)

install.packages('readxl') 
library(readxl)

# Read in the file and look at it
hotdog = read_excel('/Users/MadamPresident/Desktop/hotdog-contest-winners.xlsm')
hotdog

# Update the column names to remove the spaces
dogs = hotdog
colnames(dogs)[colnames(dogs) == 'Dogs eaten'] <- 'DogsEaten'
colnames(dogs)[colnames(dogs) == 'New record'] <- 'NewRecord'

# Barplot
ggplot(dogs) + geom_bar(aes(x = Country, y = DogsEaten, fill = Country), stat = 'identity') + 
  labs(title = 'Hot Dog Eating Contest Winners by Country') + xlab('Year') + 
  ylab('Hot Dogs Eaten')


# Stacked bar chart
# Read in new dataset
places = read_excel('/Users/MadamPresident/Desktop/hotdog-places.xlsm')
places

# Convert to matrix
places <- as.matrix(places)

# Changes the column names to the years
colnames(places) <- lapply(2000:2010, as.character)

# Set the colors
cols = c("deepskyblue", "cadetblue1", "cadetblue3") 

# Make the stacked barchart
barplot(places, border = NA, main = 'Hot Dog Eating Contest Result', xlab = 'Year',
ylab= 'Hot Dogs Eaten', col = cols)


# Pie chart
# Read in the new dataset
o = read_excel('/Users/MadamPresident/Desktop/obama-approval-ratings.xls')
o

# Create the variables for the pie chart
x = c(o$Disapprove)
labels = c(o$Issue)
piepercent<- round(100*x/sum(x), 1)

# Create the pie chart
pie(x, labels = piepercent, main = 'Issue Disapproval Percents',col = rainbow(length(x)))
legend('topleft', c(o$Issue), cex = 0.4,
       fill = rainbow(length(x)))


# Donut chart                                 
# Figure the percentages
o$fraction = o$Disapprove / sum(o$Disapprove)

# Get the cumulatative percentages
o$ymax = cumsum(o$fraction)

# Get the bottom
o$ymin = c(0, head(o$ymax, n=-1))

# Make the plot
ggplot(o, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=Issue)) +
  geom_rect() +
  coord_polar(theta="y") + 
  xlim(c(2, 4))         




