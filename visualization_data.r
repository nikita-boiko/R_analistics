library(ggplot2)
mtcars$cylinder <- as.factor(mtcars$cyl)
qplot(cylinder, mpg, data=mtcars, geom=c("boxplot", "jitter"),
      fill=cylinder, 
      main="Диаграммы размахов и исходных данных",    
      xlab="Число цилиндров",
        ylab = "Мили на голлон")

library(ggplot2)
transmission <- factor(mtcars$am, levels=c(0, 1), 
                       labels=c("Автомат", "Ручная"))
qplot(wt,mpg, data=mtcars, 
      color=transmission, shape=transmission,                                
      geom=c("point", "smooth"),               
      method="lm", formula=y~x, 
      xlab= "Вес", ylab = "Мили на голлон",
      main = "Пример с регрессией")

library(ggplot2)
mtcars$cyl <- factor(mtcars$cyl, levels=c(4, 6, 8),
                     labels=c("4 цилиндра", "6 цилиндра", "8 цилиндра"))
mtcars$am <- factor(mtcars$am, levels=c(0, 1), 
                    labels=c("Автомат","Ручная"))
qplot(wt,mpg, data=mtcars, facets=am~cyl, size=hp)                    

library(ggplot2)
data(singer, package="lattice")
qplot(height, data=singer, geom=c("density"),
      facets=voice.part~., fill=voice.part)
