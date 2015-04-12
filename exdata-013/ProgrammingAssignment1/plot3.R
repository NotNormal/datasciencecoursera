data <- read.table('data/household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', colClasses=c(Date='character',Time='character',rep("numeric",7)))
dataset <- data[grep("^[12]/2/2007", data$Date),]
dataset[,1] <- data.frame(strptime(paste(dataset[,1],dataset[,2],sep=" "), "%d/%m/%Y %H:%M:%S"))
dataset$Time <- NULL
names(dataset)[names(dataset)=="Date"] <- "DateTime"

png(filename="plot3.png",width=480,height=480, units="px")
par(cex=.75)
plot(dataset$DateTime, dataset$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dataset$DateTime, dataset$Sub_metering_2, col="red")
lines(dataset$DateTime, dataset$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
dev.off()
