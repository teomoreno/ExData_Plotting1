# Generating Plot 3

with(data_sub, {
    plot(Sub_metering_1 ~ Date_time, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")
    lines(Sub_metering_2 ~ Date_time, col = 'Red')
    lines(Sub_metering_3 ~ Date_time, col = 'Blue')
	})

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Directing Plot 3 to png File

dev.copy(png,"plot3.png", width = 480, height = 480)
dev.off()
