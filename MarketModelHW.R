library(mosaic)
View(marketmodel)

#Question One
par(mfrow=c(2,3))
plot(AAPL~SPY, data=marketmodel)
plot(GOOG~SPY, data=marketmodel)
plot(MRK~SPY, data=marketmodel)
plot(JNG~SPY, data=marketmodel)
plot(WMT~SPY, data=marketmodel)
plot(TGT~SPY, data=marketmodel)
par(mfrow=c(1,1))
#Generally the stocks and spy are linear and positively correlated because the market moves together baby

#Question 2
lm(AAPL~SPY, data=marketmodel)
lm(GOOG~SPY, data=marketmodel)
lm(MRK~SPY, data=marketmodel)
lm(JNG~SPY, data=marketmodel)
lm(WMT~SPY, data=marketmodel)
lm(TGT~SPY, data=marketmodel)

cor(AAPL~SPY, data=marketmodel)
cor(GOOG~SPY, data=marketmodel)
cor(MRK~SPY, data=marketmodel)
cor(JNG~SPY, data=marketmodel)
cor(WMT~SPY, data=marketmodel)
cor(TGT~SPY, data=marketmodel)

#Target seems to be the most tightly coupled with the SP500 bc correlation is highest.

#Question 3
#The intercepts appear to be mostly small. Apple's stock is the largest and this means that even when the S&P goes down, AAPL could still go up. Also its returns just start off at a higher base point.

#Question 4
#The slope is equal to the expected percentage return of the given stock over the expected percentage return of the S&P 500.
#'Because were comparing the expected returns of a singular stock to the returns of a basket idex fund we can tell whether the stock is under/out performing the market'
#'
#Question 5
AAPLbeta = (cov(SPY~AAPL, data=marketmodel)/var(marketmodel$SPY))
print(AAPLbeta)
GOOGbeta = (cov(SPY~GOOG, data=marketmodel)/var(marketmodel$SPY))
print(GOOGbeta)
MRKbeta = (cov(SPY~MRK, data=marketmodel)/var(marketmodel$SPY))
print(MRKbeta)
JNJbeta = (cov(SPY~JNJ, data=marketmodel)/var(marketmodel$SPY))
print(JNJbeta)
WMTbeta = (cov(SPY~WMT, data=marketmodel)/var(marketmodel$SPY))
print(WMTbeta)
TGTbeta = (cov(SPY~TGT, data=marketmodel)/var(marketmodel$SPY))
print(TGTbeta)

#AAPL, MERK, JNJ, WMT all les volatile than market

#Question 6 
#Walmart Beta (3Y Monthly): 0.64
#Yeah our estimate of the slope of Wal-Mart vs S&P 500 ~0.51 roughly agrees with
#the beta reported by Yahoo finance. Any discrepancy can be explained by more recent data from Yahoo.

#Question 7 

