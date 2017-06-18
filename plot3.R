## Set working directory to directory
setwd("/Users/cglr/Documents/Formations/Coursera Data Scientist Specialization/Exploratory Data Analysis/Week 1/Course Project 1")

## Create plots folder if not exists
if (!dir.exists('plots')) {
  dir.create('plots')
}

## Load and clean data
source('ReadAndClean.R')

## open device
png(filename='plots/plot3.png',width=480,height=480,units='px')

## Draw first graph
plot(pc$Datetime,pc$Sub_metering_1,type='l',col='black' ,xlab='',ylab='Energy sub metering')

## Add Sub_metering_2
lines(pc$Datetime,pc$Sub_metering_2,col='red')

## Add Sub_metering_3
lines(pc$Datetime,pc$Sub_metering_3,col='blue')

## Add legend
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red', 'blue'),lty='solid')

## Close device
dev.off()
