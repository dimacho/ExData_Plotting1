#############################################
# Exploratory Data Analysis: Course Project 1
# Plot1: Histogram for Global Active Power
#############################################

# Reading the Power Consumption Data
data <- read.csv("household_power_consumption.txt", sep=";")

## Filtering the data only for Feb. 1st and 2nd 2007
hsc <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

# Opening PNG plot device
png("plot1.png")

# Setting margins
par(mar=c(4,4,2,2), cex=1)

# Create a plot
hist(as.numeric(as.character(hsc$Global_active_power)), col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

# Turn the device off 
dev.off()
