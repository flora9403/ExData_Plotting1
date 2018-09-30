#load data
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
subdata<-subset(data,data$Date=="1/2/2007"|data$Date=="2/2/2007")
#Convert Date and Time variables to Date/Time classes
subdata$Date<-as.Date(subdata$Date,format="%d/%m/%Y")
subdata$datetime <- strptime(paste(subdata$Date, subdata$Time), "%Y-%m-%d %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(subdata$datetime,subdata$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()