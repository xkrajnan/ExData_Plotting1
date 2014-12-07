source('read_data.R')

plot1 <- function() {
	data <- read_data()
	png("plot1.png", width=480, height=480, units="px")
	plot1_(data)
	dev.off()
}

plot1_ <- function(data) {
	hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
}
