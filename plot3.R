source('read_data.R')

plot3 <- function() {
	data <- read_data()
	png("plot3.png", width=480, height=480, units="px")
	plot3_(data)
	dev.off()
}

plot3_ <- function(data) {
	dates <- as.POSIXct(paste(data$Date, data$Time, sep=" "))

	Sys.setlocale("LC_TIME", "C")
	plot(dates, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
	lines(dates, data$Sub_metering_2, col="red")
	lines(dates, data$Sub_metering_3, col="blue")
	legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
}
