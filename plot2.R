source("GetData.R")
pData <- getData()
plot(pData$DT, pData$Global_active_power, xlab="Feb 02, 2007 - Feb 03, 2007", 
     ylab="kilowatts", pch="18", main="chart")