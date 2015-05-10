source("load.R")

### Plot 3

png(filename = "plot3.png", width = 480, height = 480)

Sys.setlocale("LC_TIME", "USA")

with(hpc200702,	  plot(DateTime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab="") )
with(hpc200702, points(DateTime, Sub_metering_2, type="l", col="red") )
with(hpc200702, points(DateTime, Sub_metering_3, type="l", col="blue") )
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), cex=.75)

dev.off()

