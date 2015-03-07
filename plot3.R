# setwd("../Box Sync/CourseraDataScience/mod4/week1/project1")

rows<-read.csv(file = "household_power_consumption.txt",sep=";",na.strings = "?" )
rows <- rows[(rows$Date=="1/2/2007" | rows$Date =="2/2/2007"),]

png(file="plot3.png", width=480,height=480)
# hist(rows$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Globar Active Power", col = "red")
# 
rows$Datestamp=strptime(paste(rows$Date,rows$Time), format="%d/%m/%Y %H:%M:%S" )


with(rows, plot(x=Datestamp,y=Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering"))
with(rows, points(y=Sub_metering_2, x= Datestamp, col="red", type="l"))
with(rows, points(y=Sub_metering_3, x= Datestamp, col="blue", type="l"))
legend("topright", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1)
dev.off()
