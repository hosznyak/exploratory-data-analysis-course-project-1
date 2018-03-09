## Coursera
## Exploratory Data Analysis
## Course Project 1
## Plot 03

setwd("c:/Coursera/R_course_Johns_Hopkins/_workdir/04_Exploratory_Data_Analysis/Course_Project_01/")
getwd()

## reading the data

cons_data_file <- "household_power_consumption.txt"
cons_data <- read.table(cons_data_file, sep = ";", dec = ".", stringsAsFactors = FALSE, header = TRUE)
cons_data_sub <- cons_data[cons_data$Date %in% c("1/2/2007", "2/2/2007"),]

## making the plot

global_active_power <- as.numeric(cons_data_sub$Global_active_power)
datetime <- strptime(paste(cons_data_sub$Date, cons_data_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
sub_metering_1 <- as.numeric(cons_data_sub$Sub_metering_1)
sub_metering_2 <- as.numeric(cons_data_sub$Sub_metering_2)
sub_metering_3 <- as.numeric(cons_data_sub$Sub_metering_3)

plot(datetime, sub_metering_1, ylab="Energy Submetering", xlab = "", type = "l")
lines(datetime, sub_metering_2, col = "red")
lines(datetime, sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

## save the plot

dev.copy(png, file = "plot03.png", height = 480, width = 480)
dev.off()


## note: my system is hungarian, so the abbr. of the days is the hungarian one (Cs = Thu, P = Fri, Szo = Sat)