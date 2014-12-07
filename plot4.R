source('read_data.R')
source('plot2.R')
source('plot3.R')

plot4 <- function() {
	data <- read_data()
	png("plot4.png", width=480, height=480, units="px")
	plot4_(data)
	dev.off()
}

plot4_ <- function(data) {
	dates <- as.POSIXct(paste(data$Date, data$Time, sep=" "))
	Sys.setlocale("LC_TIME", "C")

	par(mfcol=c(2,2))

	plot(dates, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")

	plot(dates, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
        lines(dates, data$Sub_metering_2, col="red")
        lines(dates, data$Sub_metering_3, col="blue")
        legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n")

	plot(dates, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

	plot(dates, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
}
