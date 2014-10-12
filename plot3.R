#############################################
# Exploratory Data Analysis: Course Project 1
# Plot3: Energy sub metering by Weekdays
#############################################

# Reading the Power Consumption Data
data <- read.csv("household_power_consumption.txt", sep=";")

## Filtering the data only for Feb. 1st and 2nd 2007
hsc <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

# Opening PNG plot device
png("plot3.png")

# Setting margins
par(mar=c(3,4,2,2))

# Create a plot
plot(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"), 
     as.numeric(as.character(hsc$Sub_metering_1)), xlab="",
     ylab="Energy sub metering", main="", type="l")

# Adding second (red) line
points(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"), 
       as.numeric(as.character(hsc$Sub_metering_2)), col="red", 
       type="l")

# Adding third (blue) line
points(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"), 
       as.numeric(as.character(hsc$Sub_metering_3)), col="blue", 
       type="l")

# Adding a legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       lwd=c(1,1,1),col=c("black", "red", "blue"))

# Turn the device off 
dev.off()

