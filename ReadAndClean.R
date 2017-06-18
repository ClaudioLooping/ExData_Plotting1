  ## Load string library
  library(stringi)

  ## Create directory if not exists
  directory <- "/Users/cglr/Documents/Formations/Coursera Data Scientist Specialization/Exploratory Data Analysis/Week 1/Course Project 1"
  if (!dir.exists(directory)) {
    dir.create(directory)
  }
  
  ## Set working directory to directory
  setwd(directory)
  
  ## If file does not exist, load it and unzip it
  file <- "household_power_consumption.txt"
  
  if (!file.exists(file)) {
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(url,destfile='household_power_consumption.zip')
    unzip('power_consumption.zip',exdir='directory',overwrite=TRUE)
  }
  
  ## read whole csv file with na = '?'
  pc <- read.csv(file, na.strings = '?', sep = ';')
  
  ## Only keep data for first 2 days of February 2007
  pc<-pc[pc$Date=='1/2/2007' | pc$Date=='2/2/2007',]
  
  ## Create a new column with Date & Time formatted in Posix
  pc$Datetime <- strptime(stri_join(pc$Date,pc$Time,sep = ' '),format = "%d/%m/%Y %T")
  
