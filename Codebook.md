<h3>Getting and Cleaning Data Project</h3>
CODEBOOK
=====================================
<h2>Data Set Information</h2>

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.

The activities are:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).

The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For further details about this dataset: see the README.txt file.

<h2<Study Information<h2>

A full description is available at the site where the data was obtained, see:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

<h2>Data Set</h2>

The script gets data from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

<h2>Analysis Variables</h2>
<table>
Variable
Description
Activity	The activity peformed.
Subject	The ID of the subject.
tBodyAcc-mean()-X	Mean time for acceleration of body for X direction.
tBodyAcc-mean()-Y	Mean time for acceleration of body for Y direction.
tBodyAcc-mean()-Z	Mean time for acceleration of body for Z direction.
tBodyAcc-std()-X	Standard deviation of time for acceleration of body for X direction.
tBodyAcc-std()-Y	Standard deviation of time for acceleration of body for Y direction.
tBodyAcc-std()-Z	Standard deviation of time for acceleration of body for Z direction.
tGravityAcc-mean()-X	Mean time of acceleration of gravity for X direction.
tGravityAcc-mean()-Y	Mean time of acceleration of gravity for Y direction.
tGravityAcc-mean()-Z	Mean time of acceleration of gravity for Z direction.
tGravityAcc-std()-X	Standard deviation of time of acceleration of gravity for X direction.
tGravityAcc-std()-Y	Standard deviation of time of acceleration of gravity for Y direction.
tGravityAcc-std()-Z	Standard deviation of time of acceleration of gravity for Z direction.
tBodyAccJerk-mean()-X	Mean time of body acceleration jerk for X direction.
tBodyAccJerk-mean()-Y	Mean time of body acceleration jerk for Y direction
tBodyAccJerk-mean()-Z	Mean time of body acceleration jerk for Z direction
tBodyAccJerk-std()-X	Standard deviation of time of body acceleration jerk for X direction.
tBodyAccJerk-std()-Y	Standard deviation of time of body acceleration jerk for Y direction.
