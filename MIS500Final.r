setwd("C:/Users/Brains/Documents")
redwine <- read.csv("redwine.csv")
whitewine <- read.csv("whitewine.csv")
library(ggplot2)

summary(redwine)
summary(whitewine)

# Variable declaration

rq <- redwine$quality
wq <- whitewine$quality
rwines <- nrow(redwine)
wwines <- nrow(whitewine)

rwines
wwines

t.test(rq, wq) # produces a two-sample t-test using the red wine quality and white wine quality dataset components.

# Producing outputs

# Histograms

hist(rq, breaks=10, col="red", xlab="Quality", ylab="Count", main="Red Wine Quality Histogram")
hist(wq, breaks=10, col="black", xlab="Quality", ylab="Count", main="White Wine Quality Histogram")

# Scatter Plots

plot(rq, redwine$volatile, main="Red Wine Volatile Acidity Levels",
	 xlab = "Wine Quality ", ylab = "Volatile Acidity ", pch=19)
plot(wq, whitewine$volatile, main="White Wine Volatile Acidity Levels",
	 xlab = "Wine Quality ", ylab = "Volatile Acidity ", pch=19)
plot(rq, redwine$citric, main="Red Wine Citric Acid Content",
	 xlab = "Wine Quality ", ylab = "Citric Acid Content", pch=19)
plot(wq, whitewine$citric, main="White Wine Citric Acid Content",
	 xlab = "Wine Quality ", ylab = "Citric Acid Content", pch=19)
plot(rq, redwine$residual, main="Red Wine Sugar Content",
	 xlab = "Wine Quality ", ylab = "Sugar Content", pch=19)
plot(wq, whitewine$residual, main="White Wine Sugar Content",
	 xlab = "Wine Quality ", ylab = "Sugar Content", pch=19)