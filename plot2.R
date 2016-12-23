source("loadData.R")
#Load data
households <- loadData()

#Set layout
par(mfrow = c(1,1))

#Plot line graph
plot(households$DateTime, households$Global_active_power, type ="l", xlab = "", ylab = "Global Active Power (kilowatts)", main = "")

#Copy to png file with given width and heights
dev.copy(png, file="plot2.png", width = 480, height = 480)
dev.off()