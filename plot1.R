source("loadData.R")
#Load data
households <- loadData()

#Set layout
par(mfrow = c(1,1))

#Plot histogram of global active power with right style
hist(households$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "RED", main = "Global Active Power")

#Copy to png file with given width and heights
dev.copy(png, file="plot1.png", width = 480, height = 480)
dev.off()