library(mosaic)
summary(afc)

#question1
hist(afc$Price, main='Distribution of Restaurant Prices in Austin', xlab='Price')
hist(afc$Price, breaks=20)
?boxplot()
boxplot(afc$Price)
plot(density(afc$Price))
#looking for an interval where 80% of prices were in the middle and 20% were outside
quantile(afc$Price, p=c(0.1, 0.9))
qdata(afc$Price, p=c(0.1, 0.9))

#question2
bwplot(Price~Neighborhood, data=afc, scales=list(x=list(rot=45)))
mean(Price~Neighborhood, data=afc)

#question3
#need to plot because correlation doesn't tell the whole story
plot(Price~ FoodScore, data=afc)
#positive, less nonlinearity than feel score
cor(Price~ FoodScore, data=afc)
plot(Price~ FeelScore, data=afc)
#positive, not obviously nonlinear, lack of observations for lower x
cor(Price~ FeelScore, data=afc)


#question4
plot(Price ~ FoodScore, data=afc)

afc$value=afc$FoodScore/afc$Price
View(afc)

#question5
xyplot(Price ~ FoodScore | Neighborhood, data=afc)
