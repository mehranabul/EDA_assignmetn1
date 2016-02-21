setwd("C:/Users/Mehran.Abul/Desktop/study!/R/Coursera/EDA/Week 1")
library(sqldf)

household_power_consumption<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
household_power_consumption$Date2<-as.Date(as.character(household_power_consumption$Date),"%d/%m/%Y")
household_power_consumption1<-subset(household_power_consumption,Date2>="2007-02-01" & Date2<"2007-02-03") 
png("plot1.png", width=480, height=480)
hist(as.numeric(household_power_consumption1$Global_active_power)/1000,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()