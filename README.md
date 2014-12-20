Cleaning-and-Getting-Data-Project
=================================

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Preparation

Read the instruction –
The goal of this project is to prepare tidy data that can be used for later analysis. You will be required to submit: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4) include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

Read the assignment downloading zipfile --
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Unzip this file and directories in my working directory.

Look at the structure of the directories and read the files readme.txt  and features_info.txt.

Implementation in R

Create one R script, called run_analysis.R.

Read the following files in R
•	features.txt – list of all features
•	activity_labels.txt – links the class labels with their activity name

 featuresList <- features.txt
 activity <- activity_labels.txt

Read the training files in R

•	train/subject_train.txt – each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
•	train/X_train.txt – training set
•	train/y_train.txt – training labels

 TraningSubjects <- subject_train.txt
 TrainingSet <- X_train.txt
 TrainingLabels <- y_train.txt

Read the test files in R

•	test/subject_test.txt – each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
•	test/X_test.txt – test set
•	test/y_test.txt – test labels

 TestSubjects <- subject_test.txt
 TestSet <- X_test.txt
 TestLabels <- y_test.txt

View files with: view(), head(), etc

Determine strategy for cleaning and tidying
-	Add activity names to activities
-	Replace the characters ‘mean’ and ‘std’ in all activity names with ‘Mean’ and ‘StdDev’
-	Remove invalid characters of the second column of featuresList and replace it with a dot
-	Merge the files TrainingSet and TestSet (with cbind, rbind) to one data set
-	Add column names to the data set
-	Sort the data set by ‘ActNr’ and by ‘Subject’.

Extract only the measurements on the mean and standard deviation for each measurement
-	Select columns with grep(".*Mean.*|.*Std.*", ColumnNames)
-	Compute the means for all colums except Subject, ActNr (set) and Activity (label)

Create a second, independent tidy data set with the average of each variable for each activity and each subject.
-	Load library plyr
-	Use ‘ddply’ for creating the second, independent tidy data set
-	Write the data set to  a tekst file

Push files in GitHub

