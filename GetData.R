        getData <- function(x) {
        setwd("~/Desktop/ExData_Plotting1")
        source("makeDT.R")
        
        fileName <- "household_power_consumption.txt"
        pData <- read.table(fileName, header=TRUE, sep=";", na.strings="?")
        data1 <- pData[,1]=="2/1/2007"
        data2 <- pData[,1]=="2/2/2007"
        day1 <- pData[data1,]
        day2 <- pData[data2,]
        newData <- rbind(day1, day2)
        date <- newData$Date
        date <- as.character(newData$Date)
        time <- as.character(newData$Time)
        DT <- makeDT(date, time)
        x <- cbind(DT, newData[,3:9])
        x
}