d = read.table("data_.txt", header = TRUE)
t <- strptime(paste(d$Date, d$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

plot(t, d$Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png")
dev.off()
