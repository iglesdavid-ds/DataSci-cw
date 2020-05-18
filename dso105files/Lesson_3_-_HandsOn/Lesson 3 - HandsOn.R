library("gmodels")
library("tidyr")
library("dplyr")

loans <- read.csv("~/Data Science/1. advStats/Lesson 3 - Chi Test/loans.csv")
loans %>% group_by(loan_status) %>% summarize(count=n())
loans %>% group_by(term) %>% summarise(count=n())
CrossTable(loans$term, loans$loan_status, fisher=TRUE, chisq = TRUE, expected = TRUE, sresid=TRUE, format="SPSS")
#If you have a 36 month loan, you're either in debt or fully paid off. If you have a 60 month loan, it is more likely that you're fully paid than owing.

loans %>% group_by(home_ownership) %>% summarize(count=n())
loans %>% group_by() %>% summarise(count=n())
observed

prop.test(x = 15, n = 43, alternative = "less")
prop.test(x = loans$term, n = loans$loan_status, alternative = "less")
prop.test(x = c(7, 12), n = c(15, 28),
          alternative = "two.sided")
