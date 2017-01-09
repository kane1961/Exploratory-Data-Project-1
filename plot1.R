## File and data loading

if (!file.exists("data")) {dir.create ("data")}

fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(fileUrl, destfile = "./data/household_power_consumption.zip")

unzip("./data/household_power_consumption.zip", exdir ="./data")

list.files("./data")

HPC <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings="?")

head(HPC)
object.size(HPC)

## Subset using data from the dates 2007-02-01 and 2007-02-02

HPCsubset <- HPC[HPC$Date %in% c("1/2/2007","2/2/2007") ,]


hist(HPCsubset$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")
mtext("Plot 1", side=3, adj=0)
