library(data.table)

read_data <- function() {
	data <- fread("household_power_consumption.txt", header=TRUE, sep=";")
	data[, Date:= as.IDate(Date, format="%d/%m/%Y") ]
	data[, Time:= as.ITime(Time, format="%H:%M:%S") ]

	startDate <- as.IDate("2007-02-01")
	endDate <- as.IDate("2007-02-03")

	data[Date >= startDate & Date < endDate]
}
