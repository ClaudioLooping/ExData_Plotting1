## Set working directory to directory
setwd("/Users/cglr/Documents/Formations/Coursera Data Scientist Specialization/Exploratory Data Analysis/Week 1/Course Project 1")

## Create plots folder if not exists
if (!dir.exists('plots')) {
  dir.create('plots')
}

## Load and clean data
source('ReadAndClean.R')

## open device
png(filename='plots/plot4.png',width=480,height=480,units='px')

## Prepare for 4 plots
par(mfrow=c(2,2))

# Plot on top left
plot(pc$Datetime,pc$Global_active_power,ylab='Global Active Power',xlab='',type='l')

# Plot on top right
plot(pc$Datetime,pc$Voltage,xlab='datetime',ylab='Voltage',type='l')

# Plot on bottom left
plot(pc$Datetime,pc$Sub_metering_1,type='l',col='black' ,xlab='',ylab='Energy sub metering')
lines(pc$Datetime,pc$Sub_metering_2,col='red')
lines(pc$Datetime,pc$Sub_metering_3,col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red', 'blue'),lty='solid',bty='n')

# Plot on bottom right
plot(pc$Datetime,pc$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')

## Close device
dev.off()
