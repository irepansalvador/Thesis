par(mar=c(3,3,2,1))
plot(x= 1, xlim=c(0,20), ylim = c(0,0.48), 
     ylab = "Frequency", xlab = "Fitness", axes=F,
     main = "Distribution of Fitness Effects", cex.lab =1.2,
     mgp=c(0.8,1,.5))
box()
curve( dgamma(x,shape = 0.5, scale= 1), add=T, col=1, lwd = 3)
curve( dgamma(x,shape = 1, scale = 2),  add=T, col=2, lwd = 3)
curve( dgamma(x,shape = 6, scale = 1),  add=T, col=3, lwd = 3)
curve( dgamma(x,shape = 16, scale = 0.25), add=T, col=4, lwd = 3 )

legend("topright", 
       c("shape= 0.5",
         "shape=  1 ",
         "shape=  6 " ,
         "shape= 16 "),
       col= c(1:4), lty=1, lwd = 3, cex =1.2
        )

