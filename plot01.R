## Coursera
## Exploratory Data Analysis
## Course Project 1
## Plot 01

setwd("c:/Coursera/R_course_Johns_Hopkins/_workdir/04_Exploratory_Data_Analysis/Course_Project_01/")
getwd()

## reading the data

cons_data_file <- "household_power_consumption.txt"
cons_data <- read.table(cons_data_file, sep = ";", dec = ".", stringsAsFactors = FALSE, header = TRUE)
cons_data_sub <- cons_data[cons_data$Date %in% c("1/2/2007", "2/2/2007"),]

## making the plot

global_active_power <- as.numeric(cons_data_sub$Global_active_power)

hist(global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

## save the plot

dev.copy(png, file = "plot01.png", height = 480, width = 480)
dev.off()