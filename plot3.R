plot3<-function(){
        library(sqldf)
        source_file<-file("household_power_consumption.txt")
        subset<-read.csv.sql("household_power_consumption.txt","select * from source_file where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
        date_time<-strptime(paste(subset$Date, subset$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
        png(file = "plot3.png", width = 480, height = 480)
        plot(date_time,subset$Sub_metering_1,type='l',col="black",xlab="",ylab="Energy sub metering",main="plot 3")
        lines(date_time,subset$Sub_metering_2, type="l", col="red")
        lines(date_time,subset$Sub_metering_3, type="l", col="blue")
        legendnames<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
        legend('topright', legendnames, lty=1, col=c('black', 'red', 'blue'))
        dev.off()
        closeAllConnections()
        
}