## Sets the working directory, reads in the raw data, selects for the 
## appropriate dates and creates the data object "pData".

setwd("~/Desktop/ExData_Plotting1")
power <- read.table("~/Desktop/household_power_consumption.txt", head = TRUE, 
                    sep = ";", na.strings = "?", stringsAsFactors=FALSE)
power_base <- transform(power, Date = as.Date(Date, format = "%d/%m/%Y"))
power_base <- power_base[power_base$Date >= "2007-02-01" & 
                                 power_base$Date <= "2007-02-02", ]

datetime <- character()
for (i in 1:nrow(power_base)) {
        next_item <- paste(power_base$Date[i], power_base$Time[i])
        datetime <- rbind(datetime, next_item)
}
datetime <- strptime(datetime, format="%Y-%m-%d %H:%M:%S")
pData <- cbind(datetime, power_base[3:9])

## Begins the plot

png("plot2.png", width=6, height=6, units="in", res=480)
plot(pData$datetime, pData$Global_active_power, 
     ylab="Global Active Power (kilowatts)", 
     ylim=c(0, 7.5), xlab="", type="l", yaxt="n")
axis(2, at=c(0,7.5), labels=c("",""), lwd.ticks=0)
axis(side = 2, at = seq(from = 0, to = 6, by = 2))
dev.off()