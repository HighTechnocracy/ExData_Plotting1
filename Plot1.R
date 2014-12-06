source("GetData.R")
pData <- getData()
hist(pData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
