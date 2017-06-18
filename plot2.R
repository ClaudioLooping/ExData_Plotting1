  ## Set working directory to directory
  setwd("/Users/cglr/Documents/Formations/Coursera Data Scientist Specialization/Exploratory Data Analysis/Week 1/Course Project 1")
  
  ## Create plots folder if not exists
  if (!dir.exists('plots')) {
    dir.create('plots')
  }
  
  ## Load and clean data
  source('ReadAndClean.R')
  
  ## open device
  png(filename='plots/plot2.png',width=480,height=480,units='px')
  
  ## Draw graph
  plot(pc$Datetime,pc$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')
  
  ## Close device
  dev.off()
  