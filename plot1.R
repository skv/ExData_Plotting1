source("load.R")

### Plot 1

png(filename = "plot1.png", width = 480, height = 480)

hist(hpc200702$Global_active_power, main="Global active power", xlab="Global active power (kilowatts)", col="red")

dev.off()

