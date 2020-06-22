data<- read.table('household_power_consumption.txt',header = TRUE,sep = ';')
#df<- data[which(data$Date=='1/2/2007'| data$Date=='2/2/2007'),]
df2<- data[66637:69517,]

par(mfrow=c(2,2))
par(mar=c(4,4,2,2))
plot(y = df2$Global_active_power,x = df2$time,type = 'l',xlab = '',
     ylab='Global Active Power (kilowatts)',mgp=c(2,1,0)) 
axis(1,at=seq.POSIXt(a,c,by=86400),labels = c('Thu','Fri','Sat'))

plot(y = df2$Voltage,x = df2$time,type = 'l',xlab = 'Datetime',
     ylab='Votage',mgp=c(2,1,0)) 
axis(1,at=seq.POSIXt(a,c,by=86400),labels = c('Thu','Fri','Sat'))

plot(y = df2$Sub_metering_1,x = df2$time,type = 'l',xlab = '',
     ylab='Energy sub metering',mgp=c(2,1,0)) 
lines(y = df2$Sub_metering_2,x = df2$time,col='red')
lines(y = df2$Sub_metering_3,x = df2$time,col='blue')
axis(1,at=seq.POSIXt(a,c,by=86400),labels = c('Thu','Fri','Sat'))
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),
       #线型
       lty=c(1,1), 
       #粗细
       lwd=c(2,2),
       #字体大小
       cex=0.4)

plot(y = df2$Global_reactive_power,x = df2$time,type = 'l',xlab = 'Datetime',
     ylab='Global_reactive_power',mgp=c(2,1,0)) 
axis(1,at=seq.POSIXt(a,c,by=86400),labels = c('Thu','Fri','Sat'))

png(file="plot4.png", bg="transparent")
dev.off()