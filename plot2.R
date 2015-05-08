					  
hpc_df <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", check.names=F, stringsAsFactors=F, dec=".")					  

hpc_2day <- hpc_df[hpc_df$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(hpc_2day$Date, hpc_2day$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(date_time, hpc_2day$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
 
dev.off()
