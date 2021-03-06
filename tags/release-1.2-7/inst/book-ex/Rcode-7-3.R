library(urca)
data(Raotbl3)
attach(Raotbl3)
lc <- ts(lc, start=c(1966,4), end=c(1991,2),
         frequency=4)
li <- ts(li, start=c(1966,4), end=c(1991,2),
         frequency=4)
lw <- ts(lw, start=c(1966,4), end=c(1991,2),
         frequency=4)
ukcons <- window(cbind(lc, li, lw), start=c(1967, 2),
                 end=c(1991,2))
pu.test <- summary(ca.po(ukcons, demean='const',
                         type='Pu'))
pz.test <- summary(ca.po(ukcons, demean='const',
                         type='Pz'))
