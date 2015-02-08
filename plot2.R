# Generating Plot 2 

plot(data_sub$Global_active_power ~ data$Date_time, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

# Directing Plot 2 to png File

dev.copy(png,"plot2.png", width = 480, height = 480)
dev.off()
