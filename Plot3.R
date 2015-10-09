# Data loading code is in loadData.r
source("loadData.r")
# Load data method is used for reading the file and
# filtering the data as per the requirement
data<-loadData()
# The PNG file is created in figure folder with
# 480 x 480 dimension
png("./figure/Plot3.png",width=480,height=480)
#Create the canvas for the plot by setting type="n"
# This step just creates the canvas, x and y axis based on the data passed
with(data,plot(Time,Global_active_power*5,type="n",xlab="" ,ylab="Energy sub metering"))

# plot the sub_metering_1 data in black color using points
with(data, points(Time,Sub_metering_1,type="l",col="black"))

# plot the sub_metering_2 data in red color using points
with(data, points(Time,Sub_metering_2,type="l",col="red"))

# plot the sub_metering_3 data in blue color using points
with(data, points(Time,Sub_metering_3,type="l",col="blue"))

#create the legend in the topright
legend("topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
#close the device
dev.off()
