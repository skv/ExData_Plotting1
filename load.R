## Load data

hpc <- read.csv("household_power_consumption.txt", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings = "?", sep=";", header = TRUE, stringsAsFactors = FALSE)
if(nrow(hpc)!=2075259) stop("bad rows count: ", nrow(hpc))

hpc2007 <-hpc[which(hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007"), ]
rm(hpc)

hpc2007["datetime"] <- with(hpc2007, as.POSIXct(strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")) )
