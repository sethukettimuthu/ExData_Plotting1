plot2<-function(){
        library(sqldf)
        source_file<-file("household_power_consumption.txt")
        subset<-read.csv.sql("household_power_consumption.txt","select * from source_file where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
        date_time<-strptime(paste(subset$Date, subset$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
        png(file = "plot2.png", width = 480, height = 480)
        plot(date_time,subset$Global_active_power,type='l',col="red",xlab="",ylab="Global Active Power(kilowatts)")
        dev.off()
        closeAllConnections()
        
}