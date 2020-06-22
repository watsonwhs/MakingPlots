data<- read.table('household_power_consumption.txt',header = TRUE,sep = ';')
#df<- data[which(data$Date=='1/2/2007'| data$Date=='2/2/2007'),]
df2<- data[66637:69517,]

plot(y = df2$Sub_metering_1,x = df2$time,type = 'l',xlab = '',
     ylab='Energy sub metering') 
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

png(file="plot3.png", bg="transparent")
dev.off()