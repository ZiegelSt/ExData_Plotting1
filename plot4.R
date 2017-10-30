## The file household_power_consumption_short.txt contains only the relevant dates. Used so as to not having to load 
## the entire file
png(filename="plot4.png",width=480,height = 480)
## read data
data <- read.table("household_power_consumption_short.txt",sep=";",header = TRUE)
# create date/time string
fmtTimes<-paste(as.character(data$Date),as.character(data$Time))
strpTimes<-strptime(fmtTimes,"%d/%m/%Y %H:%M:%S")
#define plot to contain 2*2 sub panels
par(mfrow=c(2,2))
#panel1
plot(strpTimes,data$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="n")
lines(strpTimes,data$Global_active_power)
#panel2
plot(strpTimes,data$Sub_metering_1,xlab="",ylab="Global Active Power (kilowatts)",type="n")
lines(strpTimes,data$Sub_metering_1,col="black")
lines(strpTimes,data$Sub_metering_2,col="red")
lines(strpTimes,data$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
#panel3
plot(strpTimes,data$Voltage,xlab="datetime",ylab="Voltage",type="n")
lines(strpTimes,data$Voltage)
#panel4
plot(strpTimes,data$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="n")
lines(strpTimes,data$Global_reactive_power)
dev.off()
