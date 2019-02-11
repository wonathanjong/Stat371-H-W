library(mosaic)
#ford ev
mf = 0.12
#ford sd
sf = 2.29
#tesla ev
mt = 0.14
#tesla sd
st = 3.12
#covariance of both variables
cc = 3.063

#weight of portfolio
w = seq(0,1,by=0.1)
#mean portfolio
mp = w*mf + (1-w)*mt
#variance
vp = w^2*sf^2 + (1-w)^2*st^2 + 2*w*(1-w)*cc
#standard deviation
sp = sqrt(vp)
sharpe = mp/sp

plot(w, sharpe)

value0 = 100
value = do(num.sim) * {
  returns = rnorm(20,mean = 6, sigma = 15)
  compounding.factors = (1+returns/100)
  value20 = value0*prod(compounding.factors)
}

hist(value$results)
mean(value$results)
median(value$results)
plot(density(value$result))