plot1<-function(){
        library(sqldf)
        source_file<-file("household_power_consumption.txt")
        subset<-read.csv.sql("household_power_consumption.txt","select * from source_file where Date in ('1/2/2007', '2/2/2007')", header=TRUE, sep= ";")
        png(file = "plot01.png", width = 480, height = 480)
        hist(subset$Global_active_power,col="red",breaks=20,xlab="Global Active Power(kilowatts)",main="Global Active Power")
        dev.off()
        closeAllConnections()

}