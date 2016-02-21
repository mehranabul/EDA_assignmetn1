setwd("C:/Users/Mehran.Abul/Desktop/study!/R/Coursera/EDA/Week 1")
library(sqldf)

household_power_consumption<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
household_power_consumption$Date2<-as.Date(as.character(household_power_consumption$Date),"%d/%m/%Y")
household_power_consumption1<-subset(household_power_consumption,Date2>="2007-02-01" & Date2<"2007-02-03") 


household_power_consumption1$day<-format(household_power_consumption1$Date2,"%a")
day<-format(household_power_consumption1$Date2,"%a")
Global_active_power<-as.numeric(household_power_consumption1$Global_active_power)
class(household_power_consumption1$Global_active_power)
datetime <- strptime(paste(household_power_consumption1$Date, household_power_consumption1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()