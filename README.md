Cleaning and Getting Data Project
=================================

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

<h2> Preparation </h2>

<strong>Read the instruction –</strong>
The goal of this project is to prepare tidy data that can be used for later analysis. You will be required to submit: 
1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4) include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

<strong>Read the assignment downloading zipfile --</strong>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

<strong>Unzip</strong> this file and directories in my working directory. <strong>Look at the structure</strong> of the directories and read the files readme.txt  and features_info.txt.

<h2>Implementation in R</h2>

<strong>Create one R script, called run_analysis.R.</strong>

<strong>Read</strong> the following files in R
- features.txt – list of all features
- activity_labels.txt – links the class labels with their activity name

featuresList <- features.txt
activity <- activity_labels.txt

<strong>Read the training files</strong> in R --
- train/subject_train.txt – each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- train/X_train.txt – training set
- train/y_train.txt – training labels

TraningSubjects <- subject_train.txt
TrainingSet <- X_train.txt
TrainingLabels <- y_train.txt

<strong>Read the test files</strong> in R
- test/subject_test.txt – each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- test/X_test.txt – test set
- test/y_test.txt – test labels

TestSubjects <- subject_test.txt
TestSet <- X_test.txt
TestLabels <- y_test.txt

<strong>View files with: view(), head(), etc</strong>

<h2>Determine strategy for cleaning and tidying</h2>

-	Add activity names to activities
-	Replace the characters ‘mean’ and ‘std’ in all activity names with ‘Mean’ and ‘StdDev’
-	Remove invalid characters of the second column of featuresList and replace it with a dot
-	Merge the files TrainingSet and TestSet (with cbind, rbind) to one data set
-	Add column names to the data set
-	Sort the data set by ‘ActNr’ and by ‘Subject’.

<h2>Extract only the measurements on the mean and standard deviation for each measurement</h2>

-	Select columns with grep(".*Mean.*|.*Std.*", ColumnNames)
-	Compute the means for all colums except Subject, ActNr (set) and Activity (label)

<h2>Create a second, independent tidy data set with the average of each variable for each activity and each subject.</h2>

-	Load library plyr
-	Use ‘ddply’ for creating the second, independent tidy data set
-	Write the data set to  a tekst file

<h2>Push files in GitHub</h2>
