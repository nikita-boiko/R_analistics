vars <- c("mpg", "hp", "wt")
head(mtcars[vars])
summary(mtcars[vars])

mystats <- function(x, na.omit=FALSE){
  if (na.omit)
    x <- x[!is.na(x)]
  m <- mean(x)
  n <- length(x)
  s <- sd(x)
  skew <- sum((x-m)^3/s^3)/n
  kurt <- sum((x-m)^4/s^4)/n - 3
  return(c(n=n, mean=m, stdev=s, skew=skew, kurtosis=kurt))
}

sapply(mtcars[vars], mystats)

library(Hmisc)
describe(mtcars[vars])

library(pastecs)
stat.desc(mtcars[vars])

library(psych)
describe(mtcars[vars])

library(vcd)
head(Arthritis)

mytable <- with(Arthritis, table(Improved))
mytable

prop.table(mytable)
prop.table(mytable)*100

mytable <- xtabs(~ Treatment+Improved, data=Arthritis)
mytable

margin.table(mytable, 1)
prop.table(mytable, 1)

margin.table(mytable, 2)
prop.table(mytable, 2)

prop.table(mytable)

addmargins(mytable)
addmargins(prop.table(mytable))

addmargins(prop.table(mytable, 1), 2)
addmargins(prop.table(mytable, 2), 1)
