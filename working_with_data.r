a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("one", "two", "three")
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

a[3]
a[c(1, 3, 5)]
a[2:6]

y <- matrix(1:20, nrow=5, ncol=4)
y
cells <- c(1, 26, 24, 68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2") 
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                   dimnames=list(rnames, cnames))
mymatrix

x <- matrix(1:10, nrow=2)
x[2,]
x[,2] 
x[1,4] 
x[1, c(4,5)] 

dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2, 3, 4), dimnames=list(dim1, dim2, dim3))
z

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
patientdata
patientdata[1:2]
patientdata[c("diabetes", "status")]
patientdata$age 
table(patientdata$diabetes, patientdata$status)

lm(mpg~wt, data=mtcars)
lmfit <- lm(mpg~wt, data=mtcars)
summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

attach(mtcars)
summary(mpg)
plot(mpg, disp)
plot(mpg, wt)
detach(mtcars)

mpg <- c(25, 36, 47)
attach(mtcars)
plot(mpg, wt)
mpg

with(mtcars, {
  summary(mpg, disp, wt)
  plot(mpg, disp)
  plot(mpg, wt)
})

with(mtcars, {
  stats <- summary(mpg)
  stats
})
stats

with(mtcars, {
  nokeepstats <- summary(mpg)
  keepstats <<- summary(mpg)
})
nokeepstats
keepstats
