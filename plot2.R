data<- read.table('household_power_consumption.txt',header = TRUE,sep = ';')
#df<- data[which(data$Date=='1/2/2007'| data$Date=='2/2/2007'),]
df2<- data[66637:69517,]

df2$time<- paste(df2$Date,df2$Time,sep=' ')
df2$time<- strptime(df2$time,'%d/%m/%Y %H:%M:%S')
par(pin=c(2,2))
par(cex.lab=0.6)
par(mar=c(3,4,2,2))
par(cex.axis=0.6)
plot(y = df2$Global_active_power,x = df2$time,type = 'l',xlab = '',
     ylab='Global Active Power (kilowatts)') 
axis(1,at=seq.POSIXt(a,c,by=86400),labels = c('Thu','Fri','Sat'))

png(file="plot2.png", bg="transparent")
dev.off()