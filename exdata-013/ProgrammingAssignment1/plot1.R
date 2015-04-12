data <- read.table('data/household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', colClasses=c(Date='character',Time='character',rep("numeric",7)))
dataset <- data[grep("^[12]/2/2007", data$Date),]
dataset[,1] <- data.frame(strptime(paste(dataset[,1],dataset[,2],sep=" "), "%d/%m/%Y %H:%M:%S"))
dataset$Time <- NULL
names(dataset)[names(dataset)=="Date"] <- "DateTime"

png(filename="plot1.png",width=480,height=480, units="px")
par(cex=.75)
hist(dataset$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()