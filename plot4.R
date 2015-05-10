source("load.R")

### Plot 4
def.par <- par(no.readonly = TRUE)

png(filename = "plot4.png", width = 480, height = 480)

Sys.setlocale("LC_TIME", "USA")

par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))

#screen(1)
with(hpc2007, plot(datetime, Global_active_power, type="l", ylab="Global Active Power", xlab="") )

#screen(2)
with(hpc2007, plot(datetime, Voltage, type="l", ylab="Voltage", xlab="datetime") )

#screen(3)
with(hpc200702,	  plot(DateTime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab="") )
with(hpc200702, points(DateTime, Sub_metering_2, type="l", col="red") )
with(hpc200702, points(DateTime, Sub_metering_3, type="l", col="blue") )
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), bty="n")

#screen(4)
with(hpc2007, plot(datetime, Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime") )

dev.off()
par(def.par)