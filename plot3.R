d = read.table("data_.txt", header = TRUE)
t <- strptime(paste(d$Date, d$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

plot(t, d$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(t, d$Sub_metering_2, col = "red")
lines(t, d$Sub_metering_3, col = "blue")
legend("topright", pch = "-", cex=0.9, pt.cex = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png")
dev.off()
