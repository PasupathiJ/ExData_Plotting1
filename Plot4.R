# Data loading code is in loadData.r
source("loadData.r")
# Load data method is used for reading the file and
# filtering the data as per the requirement
data<-loadData()

# The PNG file is created in figure folder with
# 480 x 480 dimension
png("./figure/Plot4.png",width=480,height=480)

# The requirement is to create 4 plots as 2 rows and 2 columns
par(mfrow=c(2,2),mar=c(4,4,2,2))

# First plot is a line plot with x axis in Time and Global active power in y axis
plot(data$Time,data$Global_active_power,type="l",xlab="" ,ylab="Global Active Power")

# The second plot is a line plot with Time in x axis and Voltage in y axis
plot(data$Time,data$Voltage,type="l",xlab="datetime",ylab="Voltage")

#plot the time in x axis and global active power in y axis
with(data,plot(Time,Global_active_power*5,type="n",xlab="" ,ylab="Energy sub metering"))

with(data, points(Time,Sub_metering_1,type="l",col="black"))
with(data, points(Time,Sub_metering_2,type="l",col="red"))
with(data, points(Time,Sub_metering_3,type="l",col="blue"))
legend("topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
#plot the time in x axis and global reactive power in y axis
plot(data$Time,data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
#close the device
dev.off()