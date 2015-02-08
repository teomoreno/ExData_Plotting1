# Generating Plot 1

hist(data_sub$Global_active_power, main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)", col = "red")

# Directing Plot 1 to png File

dev.copy(png,"plot1.png", width = 480, height = 480)
dev.off()
