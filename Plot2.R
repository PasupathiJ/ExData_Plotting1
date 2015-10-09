# Data loading code is in loadData.r
source("loadData.r")
# Load data method is used for reading the file and
# filtering the data as per the requirement
data<-loadData()
# The PNG file is created in figure folder with
# 480 x 480 dimension
png("./figure/Plot2.png",width=480,height=480)
#plot the time in x axis and global active power in y axis
plot(data$Time,data$Global_active_power,type="l",xlab="" ,ylab="Global Active Power")
# close the device
dev.off()