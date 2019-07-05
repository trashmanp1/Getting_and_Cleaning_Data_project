##########################################################################################################################
## This program  is a project of  Coursera Getting and Cleaning Data.                                                   ##
## 1. Merges the training and the test sets to create one data set.                                                     ##
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.                           ##
## 3. Uses descriptive activity names to name the activities in the data set.                                           ##
## 4. Appropriately labels the data set with descriptive activity names.                                                ##
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. ##
## In short: creates a dataset with subject id;activity label; mean and std related data.                               ##
##########################################################################################################################


####################################################
# you need this packages "data.table" and "reshape2"

library("data.table")
library("reshape2")

#if you have data set in a diferent work directory, change the path_to_dir
path_to_dir<-"./UCI HAR Dataset"
####################################################


####################################################
#Read files to get pattern matching (mean or std) to clean data 
activity_labels <- read.table(paste0(path_to_dir,"/activity_labels.txt"))[,2]
features <- read.table(paste0(path_to_dir,"/features.txt"))[,2]
mean_or_std_features <- grepl("mean|std", features)
####################################################


####################################################
#Read data -> clean test data 
X_test <- read.table(paste0(path_to_dir,"/test/X_test.txt"))
y_test <- read.table(paste0(path_to_dir,"/test/y_test.txt"))
subject_test <- read.table(paste0(path_to_dir,"/test/subject_test.txt"))

names(X_test) <- features
X_test <- X_test[,mean_or_std_features]

y_test[,2] <- activity_labels[y_test[,1]]
names(y_test) <- c("Activity_ID", "Activity_Label")

names(subject_test) <- "subject"

clean_test_data <- cbind(as.data.table(subject_test), y_test, X_test)
####################################################


####################################################
#Read data -> clean train data 
X_train <- read.table(paste0(path_to_dir,"/train/X_train.txt"))
y_train <- read.table(paste0(path_to_dir,"/train/y_train.txt"))
subject_train <- read.table(paste0(path_to_dir,"/train/subject_train.txt"))

names(X_train) <- features
X_train = X_train[,mean_or_std_features]

y_train[,2] <- activity_labels[y_train[,1]]
names(y_train) <- c("Activity_ID", "Activity_Label")

names(subject_train) <- "subject"

clean_train_data <- cbind(as.data.table(subject_train), y_train, X_train)
####################################################


####################################################
# Merge data -> clean tidy data 
data = rbind(clean_test_data, clean_train_data)

id_labels <- c("subject", "Activity_ID", "Activity_Label")
data_labels <- setdiff(colnames(data), id_labels)

melt_data <- melt(data, id = id_labels, measure.vars = data_labels)

ADL_tidy_data <- dcast(melt_data, subject + Activity_Label ~ variable, mean)
####################################################


####################################################
# write clean tidy data to file, the row names of ADL_tidy_data are not to be written
write.table(ADL_tidy_data, file =paste0(path_to_dir,"/ADL_tidy_data.txt",row.name=FALSE))
####################################################
