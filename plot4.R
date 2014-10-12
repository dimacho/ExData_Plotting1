#############################################
# Exploratory Data Analysis: Course Project 1
# Plot4: Household Power Consumption 2 x 2
#############################################

# Reading the Power Consumption Data
data <- read.csv("household_power_consumption.txt", sep=";")

## Filtering the data only for Feb. 1st and 2nd 2007
hsc <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

# Opening PNG plot device
png("plot4.png")

# Setting margins
par(mar=c(4,4,4,2), mfrow=c(2,2), cex=0.8)

# Create Active Power plot
plot(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"),
     as.numeric(as.character(hsc$Global_active_power)), xlab="",
     ylab="Global Active Power", main="", type="l")

# Create Voltage plot
plot(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"),
     as.numeric(as.character(hsc$Voltage)), xlab="datetime",
     ylab="Voltage", main="", type="l")

# Create Submetering plot
plot(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"),
     as.numeric(as.character(hsc$Sub_metering_1)), xlab="",
     ylab="Energy sub metering", main="", type="l")

# Adding second (red) line to Submetering
points(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"),
       as.numeric(as.character(hsc$Sub_metering_2)), col="red",
       type="l")

# Adding third (blue) line to Submetering
points(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"),
       as.numeric(as.character(hsc$Sub_metering_3)), col="blue",
       type="l")

# Adding a legend to Submetering
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1), bty="n",
       lwd=c(1,1,1),col=c("black", "red", "blue"))

# Create Global Reactive Power plot
plot(strptime(paste(hsc$Date,hsc$Time),"%e/%m/%Y %H:%M:%S"),
     as.numeric(as.character(hsc$Global_reactive_power)), xlab="datetime",
     ylab="Global_reactive_power", main="", type="l")


# Turn the device off 
dev.off()
