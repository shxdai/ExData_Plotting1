d = read.table("data_.txt", header = TRUE)
t <- strptime(paste(d$Date, d$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))

plot(t, d$Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")

with(d, plot(t, Voltage, type = "l", xlab = "datetime"))

plot(t, d$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(t, d$Sub_metering_2, col = "red")
lines(t, d$Sub_metering_3, col = "blue")
legend("topright", pch = "-", bty = "n", cex=0.5, pt.cex = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(d, plot(t, Global_reactive_power, type = "l", xlab = "datetime"))

dev.copy(png, file = "plot4.png")
dev.off()
