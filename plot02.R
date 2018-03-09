## Coursera
## Exploratory Data Analysis
## Course Project 1
## Plot 02

setwd("c:/Coursera/R_course_Johns_Hopkins/_workdir/04_Exploratory_Data_Analysis/Course_Project_01/")
getwd()

## reading the data

cons_data_file <- "household_power_consumption.txt"
cons_data <- read.table(cons_data_file, sep = ";", dec = ".", stringsAsFactors = FALSE, header = TRUE)
cons_data_sub <- cons_data[cons_data$Date %in% c("1/2/2007", "2/2/2007"),]

## making the plot

global_active_power <- as.numeric(cons_data_sub$Global_active_power)
datetime <- strptime(paste(cons_data_sub$Date, cons_data_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plot(datetime, global_active_power, ylab="Global Active Power (kilowatts)", xlab = "", type = "l")

## save the plot

dev.copy(png, file = "plot02.png", height = 480, width = 480)
dev.off()


## note: my system is hungarian, so the abbr. of the days is the hungarian one (Cs = Thu, P = Fri, Szo = Sat)