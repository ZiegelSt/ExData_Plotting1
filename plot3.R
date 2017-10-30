## The file household_power_consumption_short.txt contains only the relevant dates. Used so as to not having to load 
## the entire file
png(filename="plot3.png",width=480,height = 480)
## read data
data <- read.table("household_power_consumption_short.txt",sep=";",header = TRUE)
## create date/time string
fmtTimes<-paste(as.character(data$Date),as.character(data$Time))
strpTimes<-strptime(fmtTimes,"%d/%m/%Y %H:%M:%S")
## set up plot
plot(strpTimes,data$Sub_metering_1,xlab="",ylab="Global Active Power (kilowatts)",type="n")
## add lines
lines(strpTimes,data$Sub_metering_1,col="black")
lines(strpTimes,data$Sub_metering_2,col="red")
lines(strpTimes,data$Sub_metering_3,col="blue")
## create legend
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()
