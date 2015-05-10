source("load.R")

### Plot 2

png(filename = "plot2.png", width = 480, height = 480)

Sys.setlocale("LC_TIME", "USA")
with(hpc2007, plot(datetime, Global_active_power, type="l", ylab="Global active power (kilowatts)", xlab="") )

dev.off()

