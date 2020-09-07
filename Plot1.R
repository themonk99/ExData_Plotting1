powerdata <- read.csv("household_power_consumption.txt", header=T, 
                      sep=';', na.strings="?", 
                      check.names=F, 
                      stringsAsFactors=F, 
                      comment.char="", quote='\"')

powerdatasub <- subset(powerdata, Date %in% c("1/2/2007","2/2/2007"))


hist(powerdatasub$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

png("plot1.png", width=480, height=480)
dev.off()