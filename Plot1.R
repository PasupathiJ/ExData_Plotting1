# Data loading code is in loadData.r
source("loadData.r")
# Load data method is used for reading the file and
# filtering the data as per the requirement
data<-loadData()
# The PNG file is created in figure folder with
# 480 x 480 dimension
png("./figure/Plot1.png",width=480,height=480)
#create the histogram for global active power
hist(data$Global_active_power,col="red",xlab="Global Active Power ( kilowatts)",main="Global Active Power")
#close the device
dev.off()
