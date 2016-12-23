source("loadData.R")
#Load data
households <- loadData()

#Set layout
par(mfrow = c(1,1))

#Starting with empty plot with right axis type and label
plot(households$DateTime, households$Sub_metering_1, type = "n", xlab = "",ylab = "Energy sub metering", main="")

#Add lines for each sub metering
lines(households$DateTime, households$Sub_metering_1)
lines(households$DateTime, households$Sub_metering_2, col = "RED")
lines(households$DateTime, households$Sub_metering_3, col = "BLUE")

#Add legends
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty = 1)

#Copy to png file with given width and heights
dev.copy(png, file="plot3.png", width = 480, height = 480)
dev.off()