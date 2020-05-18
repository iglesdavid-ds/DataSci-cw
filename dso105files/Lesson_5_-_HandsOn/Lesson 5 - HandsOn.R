library("rcompanion")
library("car")
library("fastR")
library("dplyr")

honey.df <- read.csv("~/Data Science/1. advStats/Lesson 5 - Repeated ANOVAs/honey.csv")
honey.df$year <- as.character(honey.df$year)
honey.df$year <- as.factor(honey.df$year)

years <- length(unique(honey.df$year))
year_vector <- unique(honey.df$year)

year1 <- honey.df %>% filter(year == year_vector[1])

year2 <- honey.df %>% filter(year == year_vector[2])

year3 <- honey.df %>% filter(year == year_vector[3])

year4 <- honey.df %>% filter(year == year_vector[4])

year5 <- honey.df %>% filter(year == year_vector[5])

plotNormalHistogram(log(year1$totalprod))
plotNormalHistogram(log(year2$totalprod))
plotNormalHistogram(log(year3$totalprod))
plotNormalHistogram(log(year4$totalprod))
plotNormalHistogram(log(year5$totalprod))


leveneTest(log(totalprod) ~ year, data=honey.df)

RManova <- aov(log(totalprod)~year+Error(state), honey.df)
summary(RManova)

RManova <- aov(log(totalprod)~year, honey.df)
summary(RManova)




