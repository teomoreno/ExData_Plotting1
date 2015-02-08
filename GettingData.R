# Reading Source into a Table 

data_source <- read.table("household_power_consumption.txt", header = TRUE, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", na.strings = "?")

# Converting Date Character Variable into Date Object

data_source$Date <- as.Date(data_source$Date, format = "%d/%m/%Y")

# Subsetting Data 2007-02-01 to 2007-02-02

data_sub <- subset(data_source, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_source)

# Adding New Date/Time Variable Column by Merging Date & Time Variables

date_time <- paste(as.Date(data_sub$Date), data_sub$Time)
data_sub$Date_time <- as.POSIXct(date_time)
