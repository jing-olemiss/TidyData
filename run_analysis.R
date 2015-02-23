## download target from the given URL
dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataURL, "SamsungGalaxyS.zip", method = "curl")

#unzip datafile
unzip("SamsungGalaxyS.zip")

#read files
url_test <- "UCI HAR Dataset/test/Inertial Signals/"
url_train <- "UCI HAR Dataset/train/Inertial Signals/"
body_acc_x_test <- read.table(paste(url_test,"body_acc_x_test.txt", sep = ""), header = FALSE)
body_acc_y_test <- read.table(paste(url_test,"body_acc_y_test.txt", sep = ""), header = FALSE)
body_acc_z_test <- read.table(paste(url_test,"body_acc_z_test.txt", sep = ""), header = FALSE)
body_gyro_x_test <- read.table(paste(url_test,"body_gyro_x_test.txt", sep = ""), header = FALSE)
body_gyro_y_test <- read.table(paste(url_test,"body_gyro_y_test.txt", sep = ""), header = FALSE)
body_gyro_z_test <- read.table(paste(url_test,"body_gyro_z_test.txt", sep = ""), header = FALSE)
total_acc_x_test <- read.table(paste(url_test,"total_acc_x_test.txt", sep = ""), header = FALSE)
total_acc_y_test <- read.table(paste(url_test,"total_acc_y_test.txt", sep = ""), header = FALSE)
total_acc_z_test <- read.table(paste(url_test,"total_acc_z_test.txt", sep = ""), header = FALSE)
body_acc_x_train <- read.table(paste(url_train,"body_acc_x_train.txt", sep = ""), header = FALSE)
body_acc_y_train <- read.table(paste(url_train,"body_acc_y_train.txt", sep = ""), header = FALSE)
body_acc_z_train <- read.table(paste(url_train,"body_acc_z_train.txt", sep = ""), header = FALSE)
body_gyro_x_train <- read.table(paste(url_train,"body_gyro_x_train.txt", sep = ""), header = FALSE)
body_gyro_y_train <- read.table(paste(url_train,"body_gyro_y_train.txt", sep = ""), header = FALSE)
body_gyro_z_train <- read.table(paste(url_train,"body_gyro_z_train.txt", sep = ""), header = FALSE)
total_acc_x_train <- read.table(paste(url_train,"total_acc_x_train.txt", sep = ""), header = FALSE)
total_acc_y_train <- read.table(paste(url_train,"total_acc_y_train.txt", sep = ""), header = FALSE)
total_acc_z_train <- read.table(paste(url_train,"total_acc_z_train.txt", sep = ""), header = FALSE)

#merge test and train data
body_acc_x <- merge(body_acc_x_test, body_acc_x_train, all = TRUE)
body_acc_y <- merge(body_acc_y_test, body_acc_y_train, all = TRUE)
body_acc_z <- merge(body_acc_z_test, body_acc_z_train, all = TRUE)
body_gyro_x <- merge(body_gyro_x_test, body_gyro_x_train, all = TRUE)
body_gyro_y <- merge(body_gyro_y_test, body_gyro_y_train, all = TRUE)
body_gyro_z <- merge(body_gyro_z_test, body_gyro_z_train, all = TRUE)
total_acc_x <- merge(total_acc_x_test, total_acc_x_train, all = TRUE)
total_acc_y <- merge(total_acc_y_test, total_acc_y_train, all = TRUE)
total_acc_z <- merge(total_acc_z_test, total_acc_z_train, all = TRUE)



