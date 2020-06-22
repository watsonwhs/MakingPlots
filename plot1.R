data<- read.table('household_power_consumption.txt',header = TRUE,sep = ';')
#df<- data[which(data$Date=='1/2/2007'| data$Date=='2/2/2007'),]
df2<- data[66637:69517,]

#图一
par(mfrow=c(1,1))
df2$Global_active_power<- as.numeric(df2$Global_active_power)
hist(df2$Global_active_power,col = 'red',main = 'Global Active Power',
     xlab ='Global Active Power (kilowatts)')
#setwd('//')
png(file="plot1.png", bg="transparent")
dev.off()
