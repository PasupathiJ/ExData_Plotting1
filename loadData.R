# loadData function is designed for the purpose of
# reading the data from the file and filters the data
# as per the requirement

# Since all the plots require the data for the same dates,
# this function is reused in all plotting programs

loadData <- function(){
  
  # read the delimterd text file, the delimiter is in the file is ;
  # replace any occurance of ? with blanks
  data<-read.delim("household_power_consumption.txt",sep=";",na.strings = c("?",""))
  
  # converts the Date column from factor to date
  data$Date<-as.Date(data$Date,"%d/%m/%Y")
  
  # create a POSCIXct format
  data$Time<-strptime(paste(data$Date,data$Time),format = "%Y-%m-%d %H:%M:%S")
  
  #subset the data for the two dates given in the requirement
  sampleData<-data[data$Date %in% as.Date(c("2007-02-01","2007-02-02")),]
  # return the new dataset
  sampleData
}
