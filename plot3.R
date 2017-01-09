with(HPCsubset,plot(datetime, type="n", Sub_metering_1, ylab="Energy sub metering"))
with(HPCsubset,points(datetime,Sub_metering_1, type="l", lwd=3))
with(HPCsubset,points(datetime,Sub_metering_2, type="l", col="red", lwd=3))
with(HPCsubset,points(datetime,Sub_metering_3, type="l", col="blue", lwd=3))
legend("topright", pch=c("-","-","-"),col=c("black","red","blue", lwd=3), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
mtext("Plot 3", side=3, adj=0)

dev.copy(png, file="plot3.png", width = 480, height = 480)
dev.off()

