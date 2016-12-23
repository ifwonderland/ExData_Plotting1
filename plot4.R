source("loadData.R")
#Load data
households <- loadData()

#Set layout
par(mfrow = c(2,2))

#Plot first diagram in row 1
plot(households$DateTime, households$Global_active_power, type ="l", xlab = "", ylab = "Global Active Power (kilowatts)", main = "")

#Plot second diagram in row 1
plot(households$DateTime, households$Voltage, xlab ="datetime", ylab="Voltage", type="l")

#Plot first diagram in row 2
plot(households$DateTime, households$Sub_metering_1, type = "n", xlab = "",ylab = "Energy sub metering", main="")
lines(households$DateTime, households$Sub_metering_1)
lines(households$DateTime, households$Sub_metering_2, col = "RED")
lines(households$DateTime, households$Sub_metering_3, col = "BLUE")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty = 1, bty = "n")

#Plot second diagram in row 2
plot(households$DateTime, households$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type = "l")

#Copy to png file with given width and heights
dev.copy(png, file="plot4.png", width = 480, height = 480)
dev.off()
