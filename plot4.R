# setwd("../Box Sync/CourseraDataScience/mod4/week1/project1")

rows<-read.csv(file = "household_power_consumption.txt",sep=";",na.strings = "?" )
rows <- rows[(rows$Date=="1/2/2007" | rows$Date =="2/2/2007"),]

png(file="plot4.png", width=480,height=480)
# hist(rows$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Globar Active Power", col = "red")
# 
rows$Datestamp=strptime(paste(rows$Date,rows$Time), format="%d/%m/%Y %H:%M:%S" )


par(mfcol = c(2, 2))
plot(x=rows$Datestamp,y=rows$Global_active_power, type = "l", xlab="", ylab="Global Active Power")

with(rows, plot(x=Datestamp,y=Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering"))
with(rows, points(y=Sub_metering_2, x= Datestamp, col="red", type="l"))
with(rows, points(y=Sub_metering_3, x= Datestamp, col="blue", type="l"))
legend("topright", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1)

#2 new graphs
with(rows, plot(x=Datestamp,y=Voltage, type = "l", xlab="datetime", ylab="Voltage"))

with(rows, plot(x=Datestamp,y=Global_reactive_power, type = "l", xlab="datetime", ylab="Global_reactive_power"))

dev.off()

