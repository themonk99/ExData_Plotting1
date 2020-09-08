powerdata <- read.csv("household_power_consumption.txt", header=T, 
                      sep=';', na.strings="?",
                      nrows = 2075259,
                      check.names=F, 
                      stringsAsFactors=F, 
                      comment.char="", quote='\"')

powerdatasub <- subset(powerdata, Date %in% c("1/2/2007","2/2/2007"))
powerdatasub$Date <- as.Date(powerdatasub$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(powerdatasub$Date), powerdatasub$Time)
powerdatasub$Datetime <- as.POSIXct(datetime)

with(powerdatasub, {
        plot(Global_active_power~Datetime, type="l",
             ylab="Global Active Power (kilowatts)", xlab="")
})

dev.print(png, "plot2.png", width=480, height=480)
dev.off()