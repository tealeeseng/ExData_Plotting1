# setwd("../Box Sync/CourseraDataScience/mod4/week1/project1")

rows<-read.csv(file = "household_power_consumption.txt",sep=";",na.strings = "?" )
rows <- rows[(rows$Date=="1/2/2007" | rows$Date =="2/2/2007"),]

png(file="plot1.png", width=480,height=480)
hist(rows$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Globar Active Power", col = "red")
dev.off()