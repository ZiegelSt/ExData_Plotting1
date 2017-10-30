## The file household_power_consumption_short.txt contains only the relevant dates. Used so as to not having to load 
## the entire file
png(filename="plot2.png",width=480,height = 480)
## read data
data <- read.table("household_power_consumption_short.txt",sep=";",header = TRUE)
## create date/time strings
fmtTimes<-paste(as.character(data$Date),as.character(data$Time))
strpTimes<-strptime(fmtTimes,"%d/%m/%Y %H:%M:%S")
## create plot
plot(strpTimes,data$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="n")
## add line
lines(strpTimes,data$Global_active_power)
dev.off()
