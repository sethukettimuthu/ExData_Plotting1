plot1<-function(){
        library(sqldf)
        source<-file("household_power_consumption.txt")
        subset<-read.csv.sql("household_power_consumption.txt","select * from source where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
        hist(subset$Global_active_power,col="red",breaks=20,xlab="Global Active Power(kilowatts)",main="Global Active Power")
        closeAllConnections()

}