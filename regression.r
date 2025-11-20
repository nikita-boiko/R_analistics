fit <- lm(weight ~ height, data=women)
summary(fit)
women$weight
fitted(fit)
residuals(fit)
plot(women$height,women$weight, 
     xlab="Рост (дюймы)",
     ylab="Вес (фунты)")
abline(fit)
 
fit2 <- lm(weight ~ height + I(height^2), data=women)     
summary(fit2)
plot(women$height,women$weight,
     xlab="Рост (дюймы)",
     ylab="Вес (фунты)")
lines(women$height,fitted(fit2))

fit3 <- lm(weight ~ height + I(height^2) +I(height^3), data=women)
library(car)
scatterplot(weight ~ height, data=women,
            spread=FALSE, lty.smooth=2, pch=19,
            main="Женщины в возрасте 30−39 лет", 
            xlab="Рост (дюймы)",
            ylab="Вес (фунты)")

