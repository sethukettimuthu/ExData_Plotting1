plot2<-function(){
        library(sqldf)
        source<-file("household_power_consumption.txt")
        subset<-read.csv.sql("household_power_consumption.txt","select * from source where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
        date_time<-strptime(paste(subset$Date, subset$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
        plot(date_time,Subset$Global_active_power,type='l',col="red",xlab="",ylab="Global Active Power(kilowatts)",main="power consumed by specified date and time")
        closeAllConnections()
        
}