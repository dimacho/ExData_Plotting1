#############################################
# Exploratory Data Analysis: Course Project 1
# Plot2: Global Active Power by Weekdays
#############################################

# Reading the Power Consumption Data
data <- read.csv("household_power_consumption.txt", sep=";")

## Filtering the data only for Feb. 1st and 2nd 2007
hsc <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

# Opening PNG plot device
png("plot2.png")

# Setting margins
par(mar=c(3,4,2,2), cex=1)

# Create a plot
plot(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"), 
     as.numeric(as.character(hsc$Global_active_power)), xlab="",
     ylab="Global Active Power (kilowatts)", main="", type="l")

# Turn the device off 
dev.off()
