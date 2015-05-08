					  
hpc_df <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", check.names=F, stringsAsFactors=F, dec=".")					  

hpc_2day <- hpc_df[hpc_df$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(hpc_2day$Date, hpc_2day$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)

plot(date_time, hpc_2day$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, hpc_2day$Sub_metering_2, type="l", col="red")
lines(date_time, hpc_2day$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()
