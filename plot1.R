## The file household_power_consumption_short.txt contains only the relevant dates. Used so as to not having to load 
## the entire file
png(filename="plot1.png",width=480,height = 480)
## read data
data <- read.table("household_power_consumption_short.txt",sep=";",header = TRUE)
## plot histogram
hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
