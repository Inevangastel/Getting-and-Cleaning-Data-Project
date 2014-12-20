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
<tr>
<th>Variable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>Activity</td>
<td>The activity performed.</td>
</tr>
<tr>
<td>Subject</td>
<td>The ID of the subject.</td>
</tr>
<tr>
<td>tBodyAcc-mean()-X</td>
<td>Mean time for acceleration of body for X direction.</td>
</tr>
<tr>
<td>tBodyAcc-mean()-Y</td>
<td>Mean time for acceleration of body for Y direction.</td>
</tr>
<tr>
<td>tBodyAcc-mean()-Z</td>
<td>Mean time for acceleration of body for Z direction.</td>
</tr>
<tr>
<td>tBodyAcc-std()-X</td>
<td>Standard deviation of time for acceleration of body for X direction.</td>
</tr>
<tr>
<td>tBodyAcc-std()-Y</td>
<td>Standard deviation of time for acceleration of body for Y direction.</td>
</tr>
<tr>
<td>tBodyAcc-std()-Z</td>
<td>Standard deviation of time for acceleration of body for Z direction.</td>
</tr>
<tr>
<td>tGravityAcc-mean()-X</td>
<td>Mean time of acceleration of gravity for X direction.</td>
</tr>
<tr>
<td>tGravityAcc-mean()-Y</td>
<td>Mean time of acceleration of gravity for Y direction.</td>
</tr>
<tr>
<td>tGravityAcc-mean()-Z</td>
<td>Mean time of acceleration of gravity for Z direction.</td>
</tr>
<tr>
<td>tGravityAcc-std()-X</td>
<td>Standard deviation of time of acceleration of gravity for X direction.</td>
</tr>
<tr>
<td>tGravityAcc-std()-Y</td>
<td>Standard deviation of time of acceleration of gravity for Y direction.</td>
</tr>
<tr>
<td>tGravityAcc-std()-Z</td>
<td>Standard deviation of time of acceleration of gravity for Z direction.</td>
</tr>
<tr>
<td>tBodyAccJerk-mean()-X</td>
<td>Mean time of body acceleration jerk for X direction.</td>
</tr>
<tr>
<td>tBodyAccJerk-mean()-Y</td>
<td>Mean time of body acceleration jerk for Y direction</td>
</tr>
<tr>
<td>tBodyAccJerk-mean()-Z</td>
<td>Mean time of body acceleration jerk for Z direction</td>
</tr>
<tr>
<td>tBodyAccJerk-std()-X</td>
<td>Standard deviation of time of body acceleration jerk for X direction.</td>
</tr>
<tr>
<td>tBodyAccJerk-std()-Y</td>
<td>Standard deviation of time of body acceleration jerk for Y direction.</td>
</tr>
<tr>
<td>tBodyAccJerk-std()-Z</td>
<td>Standard deviation of time of body acceleration jerk for Z direction.</td>
</tr>
<tr>
<td>tBodyGyro-mean()-X</td>
<td>Mean body gyroscope measurement for X direction.</td>
</tr>
<tr>
<td>tBodyGyro-mean()-Y</td>
<td>Mean body gyroscope measurement for Y direction.</td>
</tr>
<tr>
<td>tBodyGyro-mean()-Z</td>
<td>Mean body gyroscope measurement for Z direction.</td>
</tr>
<tr>
<td>tBodyGyro-std()-X</td>
<td>Standard deviation of body gyroscope measurement for X direction.</td>
</tr>
<tr>
<td>tBodyGyro-std()-Y</td>
<td>Standard deviation of body gyroscope measurement for Y direction.</td>
</tr>
<tr>
<td>tBodyGyro-std()-Z</td>
<td>Standard deviation of body gyroscope measurement for Z direction.</td>
</tr>
<tr>
<td>tBodyGyroJerk-mean()-X</td>
<td>Mean jerk signal of body for X direction.</td>
</tr>
<tr>
<td>tBodyGyroJerk-mean()-Y</td>
<td>Mean jerk signal of body for Y direction.</td>
</tr>
<tr>
<td>tBodyGyroJerk-mean()-Z</td>
<td>Mean jerk signal of body for Z direction.</td>
</tr>
<tr>
<td>tBodyGyroJerk-std()-X</td>
<td>Standard deviation of jerk signal of body for X direction.</td>
</tr>
<tr>
<td>tBodyGyroJerk-std()-Y</td>
<td>Standard deviation of jerk signal of body for Y direction.</td>
</tr>
<tr>
<td>tBodyGyroJerk-std()-Z</td>
<td>Standard deviation of jerk signal of body for Z direction.</td>
</tr>
<tr>
<td>tBodyAccMag-mean()</td>
<td>Mean magnitude of body Acc</td>
</tr>
<tr>
<td>tBodyAccMag-std()</td>
<td>Standard deviation of magnitude of body Acc</td>
</tr>
<tr>
<td>tGravityAccMag-mean()</td>
<td>Mean gravity acceleration magnitude.</td>
</tr>
<tr>
<td>tGravityAccMag-std()</td>
<td>Standard deviation of gravity acceleration magnitude.</td>
</tr>
<tr>
<td>tBodyAccJerkMag-mean()</td>
<td>Mean magnitude of body acceleration jerk.</td>
</tr>
<tr>
<td>tBodyAccJerkMag-std()</td>
<td>Standard deviation of magnitude of body acceleration jerk.</td>
</tr>
<tr>
<td>tBodyGyroMag-mean()</td>
<td>Mean magnitude of body gyroscope measurement.</td>
</tr>
<tr>
<td>tBodyGyroMag-std()</td>
<td>Standard deviation of magnitude of body gyroscope measurement.</td>
</tr>
<tr>
<td>tBodyGyroJerkMag-mean()</td>
<td>Mean magnitude of body body gyroscope jerk measurement.</td>
</tr>
<tr>
<td>tBodyGyroJerkMag-std()</td>
<td>Standard deviation of magnitude of body body gyroscope jerk measurement.</td>
</tr>
<tr>
<td>fBodyAcc-mean()-X</td>
<td>Mean frequency of body acceleration for X direction.</td>
</tr>
<tr>
<td>fBodyAcc-mean()-Y</td>
<td>Mean frequency of body acceleration for Y direction.</td>
</tr>
<tr>
<td>fBodyAcc-mean()-Z</td>
<td>Mean frequency of body acceleration for Z direction.</td>
</tr>
<tr>
<td>fBodyAcc-std()-X</td>
<td>Standard deviation of frequency of body acceleration for X direction.</td>
</tr>
<tr>
<td>fBodyAcc-std()-Y</td>
<td>Standard deviation of frequency of body acceleration for Y direction.</td>
</tr>
<tr>
<td>fBodyAcc-std()-Z</td>
<td>Standard deviation of frequency of body acceleration for Z direction.</td>
</tr>
<tr>
<td>fBodyAccJerk-mean()-X</td>
<td>Mean frequency of body accerlation jerk for X direction.</td>
</tr>
<tr>
<td>fBodyAccJerk-mean()-Y</td>
<td>Mean frequency of body accerlation jerk for Y direction.</td>
</tr>
<tr>
<td>fBodyAccJerk-mean()-Z</td>
<td>Mean frequency of body accerlation jerk for Z direction.</td>
</tr>
<tr>
<td>fBodyAccJerk-std()-X</td>
<td>Standard deviation frequency of body accerlation jerk for X direction.</td>
</tr>
<tr>
<td>fBodyAccJerk-std()-Y</td>
<td>Standard deviation frequency of body accerlation jerk for Y direction.</td>
</tr>
<tr>
<td>fBodyAccJerk-std()-Z</td>
<td>Standard deviation frequency of body accerlation jerk for Z direction.</td>
</tr>
<tr>
<td>fBodyGyro-mean()-X</td>
<td>Mean frequency of body gyroscope measurement for X direction.</td>
</tr>
<tr>
<td>fBodyGyro-mean()-Y</td>
<td>Mean frequency of body gyroscope measurement for Y direction.</td>
</tr>
<tr>
<td>fBodyGyro-mean()-Z</td>
<td>Mean frequency of body gyroscope measurement for Z direction.</td>
</tr>
<tr>
<td>fBodyGyro-std()-X</td>
<td>Standard deviation frequency of body gyroscope measurement for X direction.</td>
</tr>
<tr>
<td>fBodyGyro-std()-Y</td>
<td>Standard deviation frequency of body gyroscope measurement for Y direction.</td>
</tr>
<tr>
<td>fBodyGyro-std()-Z</td>
<td>Standard deviation frequency of body gyroscope measurement for Z direction.</td>
</tr>
<tr>
<td>fBodyAccMag-mean()</td>
<td>Mean frequency of body acceleration magnitude.</td>
</tr>
<tr>
<td>fBodyAccMag-std()</td>
<td>Standard deviation of frequency of body acceleration magnitude.</td>
</tr>
<tr>
<td>fBodyBodyAccJerkMag-mean()</td>
<td>Mean frequency of body acceleration jerk magnitude.</td>
</tr>
<tr>
<td>fBodyBodyAccJerkMag-std()</td>
<td>Standard deviation of frequency of body acceleration jerk magnitude.</td>
</tr>
<tr>
<td>fBodyBodyGyroMag-mean()</td>
<td>Mean frequency of magnitude of body gyroscope measurement.</td>
</tr>
<tr>
<td>fBodyBodyGyroMag-std()</td>
<td>Standard deviation of frequency of magnitude of body gyroscope measurement.</td>
</tr>
<tr>
<td>fBodyBodyGyroJerkMag-mean()</td>
<td>Mean frequency of magnitude of body gyroscope jerk measurement.</td>
</tr>
</table>