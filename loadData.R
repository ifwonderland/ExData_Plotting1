##This function loads raw data for house hold powers, file is already downloaded to same working directory
loadData <- function() {
    #Download file if needed
    if(!file.exists("household_power_consumption.txt")){
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile ="household_power.zip",method = "curl")
        unzip("household_power.zip")
    }
    
    #Raw data
    households <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
    #We only need 2007-02-01 and 2007-02-02 data
    households <- households[grep("^[12]/2/2007", households$Date),]
    #Combine and convert Date and Time type
    households$DateTime <- paste(households$Date, households$Time)
    households$DateTime <- strptime(households$DateTime, format="%d/%m/%Y %H:%M:%S")
    #Returns households data
    households
}