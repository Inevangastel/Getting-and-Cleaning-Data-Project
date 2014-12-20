# Getting and cleaning data
# Project Assignment, week 3

# You should create one R script called run_analysis.R that does the
# following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement. 
# 3. Uses descriptive activity names to name the activities in the 
#    data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy 
#    data set with the average of each variable for each activity and
#    each subject.
#
# read the following files in R --
# features.txt -- list of all features
# activity_labels.txt -- links the class labels with their activity name.

featuresList <- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
activity <- read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

# read the training files in R --
# 1. train/subject_train.txt -- each row identifies the subject who 
#    performed the activity for each window sample. Its range is from
#    1 to 30.
# 2. train/X_train.txt -- training set
# 3. train/y_train.txt -- training labels

TrainingSubjects <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
TrainingSet <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
TrainingLabels <- read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)

# read the test files in R --
# 4. test/subject_text.txt -- each row identifies the subject who
#    performed the activity for each window sample. Its range is from
#    1 to 30.
# 4. test/X_test.txt -- test set
# 5. test/y_test.txt -- test labels

TestSubjects <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
TestSet <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
TestLabels <- read.csv("UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)

# Add the activity names in test and in training to activities
TestLabels[,"activity_name"] <- as.factor(activity[(TestLabels[,1]),2])
TrainingLabels[,"activity_name"] <- as.factor(activity[(TrainingLabels[,1]),2])

# Use the same words for 'mean' and 'std'; replace these words with
# 'Mean' and 'StdDev'
featuresList[,2] <- gsub("-mean", "Mean", featuresList[,2])
featuresList[,2] <- gsub("-std", "StdDev", featuresList[,2])

# Remove invalid characters of the second column of featuresList and
# replace it with a dot
featuresColNames <- make.names(featuresList[,2], unique = TRUE)

# Merge the files TrainingSet and TestSet;
# start with binding the columns
TestingSet <- cbind(TestLabels, TestSubjects, TestSet)
TrainSet <- cbind(TrainingLabels, TrainingSubjects, TrainingSet)

# Then merge the rows, so there will be one data set
DataSet <- rbind(TestingSet, TrainSet)

# Add column names to the complete dataset
# 'ActNr' is 'set'; 'Activity'is 'label'
colnames(DataSet) <- c("ActNr", "Activity", "Subject", featuresColNames)

# Sort the DataSet, first by column 'Subject' and then by 'ActNr'
SortedData <- DataSet[order(DataSet$ActNr, DataSet$Subject),]

# Extract only the measurements on the mean and standard deviation 
# for each measurement.

DataSet$ActNr <- as.factor(DataSet$ActNr)
DataSet$Subject <- as.factor(DataSet$Subject)

ColumnNames <- names(SortedData)
ColumnIndex <- c(1,2,3, grep(".*Mean.*|.*Std.*", ColumnNames))
CleanDataSet <- SortedData[,ColumnIndex]

# Create a second, independent tidy data set with the average of each
# variable for each activity and each subject; calculate the mean of 
# all columns except the columns 'Subject' and 'Activity'.
library(plyr)

AllColMeans <- function(data) {
  colMeans(data[,-c(1,2,3)])
}

SecondDataSet <- ddply(CleanDataSet, .(Activity, Subject), AllColMeans)

# write the dataset to a text file
write.table(SecondDataSet, "SecondDataSet.txt", row.names = FALSE)





