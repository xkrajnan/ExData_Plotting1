source('read_data.R')

plot2 <- function() {
	data <- read_data()
	png("plot2.png", width=480, height=480, units="px")
	plot2_(data)
	dev.off()
}

plot2_ <- function(data) {
	dates <- as.POSIXct(paste(data$Date, data$Time, sep=" "))

	Sys.setlocale("LC_TIME", "C")
	plot(dates, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
}
