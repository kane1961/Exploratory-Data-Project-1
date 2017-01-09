## Build Plot 2
## If the source Plot1.R was not run, would be necessary to repeat the comand to load the file.

datetime <- strptime(paste(HPCsubset$Date, HPCsubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime,HPCsubset$Global_active_power, type="l", ylab="Global Active Power +(kilowatts)", lwd=3)
mtext("Plot 2", side=3, adj=0)

dev.copy(png, file="plot2.png", width = 480, height = 480)
dev.off()
