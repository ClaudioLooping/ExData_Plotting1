  ## Set working directory to directory
  setwd("/Users/cglr/Documents/Formations/Coursera Data Scientist Specialization/Exploratory Data Analysis/Week 1/Course Project 1")
  
  ## Create plots folder if not exists
  if (!dir.exists('plots')) {
    dir.create('plots')
  }
  
  ## Load and clean data
  source('ReadAndClean.R')
  
  ## open device
  png(filename='plots/plot1.png',width=480,height=480,units='px')
  
  ## Draw histogram
  hist(pc$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')
  
  ## Close device
  dev.off()
  