makeDT <- function(a, b) {
        Date_Time <- vector()
        for (i in 1:length(a)) {
                next_item <- paste(a[i], b[i])
                Date_Time <- rbind(Date_Time, next_item)
        }
        Date_Time <- Date_Time <- strptime(Date_Time, format="%m/%d/%Y %H:%M:%S")
}