setwd("C:/Users/Mehran.Abul/Desktop/study!/R/Coursera/EDA/Week 1")
library(sqldf)

household_power_consumption<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
household_power_consumption$Date2<-as.Date(as.character(household_power_consumption$Date),"%d/%m/%Y")
household_power_consumption1<-subset(household_power_consumption,Date2>="2007-02-01" & Date2<"2007-02-03") 

par(mfrow=c(2,2))

png("plot4.png", width=480, height=480)
plot(datetime, household_power_consumption1$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(datetime, household_power_consumption1$Voltage, type="l", xlab="", ylab="Voltage")
plot(datetime, household_power_consumption1$Sub_metering_1, type="l",xlab=" ",ylab="Energy Submetering")
lines(datetime,household_power_consumption1$Sub_metering_2,type="l",col="red")
lines(datetime,household_power_consumption1$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))
plot(datetime, as.numeric(household_power_consumption1$Global_reactive_power)/100, type="l", xlab="datetime", ylab="Global_reactive_Power")
dev.off()