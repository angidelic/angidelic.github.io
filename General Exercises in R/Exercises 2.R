# Import Survey and display results
survey <- read.csv("C:/Users/Madam President/Desktop/Spring2020/AmericanCommunitySurvey.csv")
survey


mean(survey$HSDegree)
mode(survey$HSDegree)
median(survey$HSDegree)
min(survey$HSDegree)
max(survey$HSDegree)

ggplot(survey, aes(x = HSDegree)) + 
    geom_histogram(binwidth = 2, 
                   color = "blue", 
                   fill = "light blue") + 
    labs(x = "High School Degree", y = "Count", 
         title = "High School Graduates")


library(ggplot2)
ggplot(survey, aes(x = HSDegree)) + 
    geom_histogram(aes(y = ..density..), binwidth = 1, 
                   color = "blue", 
                   fill = "light blue") + 
    stat_function(fun = dnorm, colour = "red",  # add the normal distrbution line
                  args = list(mean = mean(survey$HSDegree),
                             sd = sd(survey$HSDegree))) + 
    labs(x = "High School Degree", y = "Count by Density", 
         title = "High School Graduates") 



qqnorm(survey$HSDegree, 
       col = "blue",
       xlab = "Quartiles", 
       ylab = "Sample Values", 
       main = "HS Degree Probabilities") ;
qqline(survey$HSDegree,
       col = "red")



#calculate the description and return everything as an easy toread column
a <- stat.desc(as.single(survey$HSDegree), 
               basic = TRUE, 
               desc = TRUE, 
               norm = TRUE, 
               p = 0.95)
round(a, 5)  # Remove scientific notation from the results


################## work space#####################

# alternate normal curve I didn't use
graduates <- ggplot(survey, aes(x = HSDegree)) + 
    geom_histogram(binwidth = .8, 
                   color = "blue", 
                   fill = "light blue") + 
    labs(x = "High School Degree", y = "Density", 
         title = "High School Graduates")
a <- seq(min(survey$HSDegree), max(survey$HSDegree), length.out = 137)
b <- with(survey, data.frame(x = a, y = dnorm(a, mean(HSDegree), sd(HSDegree))))
graduates +
    geom_line(data = b, aes(x = x, y = y), color = "red")


a <- stat.desc(survey$HSDegree, basic = TRUE, desc = TRUE, norm = TRUE, p = 0.95)
round(a, 5)




install.packages("pastecs")
library(pastecs)



         

stat.desc(survey$HSDegree)





a <- stat.desc(survey$HSDegree, basic = TRUE, desc = TRUE, norm = TRUE, p = 0.95)
round(a, 5)


qqplot(survey$HSDegree)

warnings()


ggplot(survey, aes(x = HSDegree)) + 
    geom_histogram(aes(y = ..density..), binwidth = .8, 
                   color = "blue", 
                   fill = "light blue") + 
    stat_function(fun = dnorm, colour = "red",  # add the normal distrbution line
                  args = list(mean = mean(survey$HSDegree),
                              sd = sd(survey$HSDegree))) + 
    labs(x = "High School Degree", y = "Count by Density", 
         title = "High School Graduates") +
    qqnorm(survey$HSDegree) 




qplot(survey$HSDegree) + 
    geom_histogram(binwidth = .8, 
                   color = "blue", 
                   fill = "light blue") + 
    labs(x = "High School Degree", y = "Count", 
         title = "High School Graduates")



# Keep this original below
ggplot(data = data.frame(x = c(-3, 3)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1)) + 
    ylab("") +
    scale_y_continuous(breaks = NULL) +
    geom_histogram(binwidth = 1)




qqnorm(survey$HSDegree)

qqline(survey$HSDegree)

qqplot(survey$HSDegree)



a <- stat.desc(survey$HSDegree, basic = TRUE, desc = TRUE, norm = TRUE, p = 0.95)
round(a, 5)





