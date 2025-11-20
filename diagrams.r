dose  <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(dose, drugA, type="b")

opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)           
plot(dose, drugA, type="b")  
par(opar)

par(lty=2)
par(pch=17)

plot(dose, drugA, type="b", lty=2, pch=17)

plot(dose, drugA, type="b", lty=3, lwd=3, pch=15, cex=2)

n <- 10
mycolors <- rainbow(n)
pie(rep(1, n), labels=mycolors, col=mycolors)
mygrays <- gray(0:n/n)
pie(rep(1, n), labels=mygrays, col=mygrays)

windowsFonts(
  A=windowsFont("Arial Black"),
  B=windowsFont("Bookman Old Style"),
  C=windowsFont("Comic Sans MS")
)

attach(mtcars)
plot(wt, mpg)
abline(lm(mpg~wt))
title("Регрессия расхода топлива в зависимости от веса автомобиля")
detach(mtcars)
dev.off()

dose  <- c(20, 30, 40, 45, 60)      
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opar <- par(no.readonly=TRUE)      
par(pin=c(2, 3))                    
par(lwd=2, cex=1.5)            
par(cex.axis=.75, font.axis=3)      
plot(dose, drugA, type="b", pch=19, lty=2, col="red")    
plot(dose, drugB, type="b", pch=23, lty=6, col="blue", 
     bg="green")
par(opar)

plot(dose, drugA, type="b",  
     col="red", lty=2, pch=2, lwd=2,
     main="Клинические испытания препарата А", 
     sub="Это вымышленные данные", 
     xlab="Доза", ylab="Эффект от препарата", 
     xlim=c(0, 60), ylim=c(0, 70), ann=FALSE)



title(main="Мой заголовок", col.main="red",
      sub="Мой подзаголовок", col.sub="blue", 
      xlab="Моя подпись оси X", ylab="Моя подпись оси Y", 
      col.lab="green", cex.lab=0.75)
