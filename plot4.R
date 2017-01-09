## This plot set with 4 plots, using par()
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

## Plot 1
plot(datetime,HPCsubset$Global_active_power, type="l", ylab="Global Active Power", lwd=2)

## Plot 2
plot(datetime,HPCsubset$Voltage, type="l", ylab="Voltage", lwd=2)

## Plot 3
with(HPCsubset,plot(datetime, type="n", Sub_metering_1, ylab="Energy sub metering"))
with(HPCsubset,points(datetime,Sub_metering_1, type="l", lwd=2))
with(HPCsubset,points(datetime,Sub_metering_2, type="l", col="red", lwd=2))
with(HPCsubset,points(datetime,Sub_metering_3, type="l", col="blue", lwd=2))
legend("topright", pch=c("-","-","-"),col=c("black","red","blue", lwd=2), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_"))

## Plot 4
plot(datetime,HPCsubset$Global_reactive_power, type="l", ylab="Global Reactive Power", lwd=2)

dev.copy(png, file="plot4.png",width = 480, height = 480)
dev.off()

