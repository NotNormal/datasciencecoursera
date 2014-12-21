---
title: "Project"
author: "Sean Smitz"
date: "21 December, 2014"
output: html_document
---
## Summary
Data tables were read in from each source file and mapped by row as follows:  
subject_[test|train].txt -> y_[test|train].txt -> X_[test|train].txt  
The data from the X_[test|train].txt was filtered for columns that did not provide a mean or standard deviation for the measurement.  
The data was then joined to map the activityIds to the activity_labels and the activityId column was dropped.  
The test and train data was then appended together and a summary was made after grouping the data by subjectId and activity.  

## Code Book
For more information reagarding how the measurements were taken and descriptions of the columns from the source data see: ./project-data/UCI HAR Dataset/features_info.txt

* subjectId
    + The identifying number of the subject
* activity
    + The activity being performed by the subject while the measurements were being collected.
        + As taken from source y_[test|train].txt and mapped to activity_labels.txt
* tBodyAcc.mean.X
    + This is the mean of the measurements taken from tBodyAcc-mean()-X in the source data for the subject and activity.
* tBodyAcc.mean.Y
    + This is the mean of the measurements taken from tBodyAcc-mean()-Y in the source data for the subject and activity.
* tBodyAcc.mean.Z
    + This is the mean of the measurements taken from tBodyAcc-mean()-Z in the source data for the subject and activity.
* tBodyAcc.std.X
    + This is the mean of the measurements taken from tBodyAcc-std()-X in the source data for the subject and activity.
* tBodyAcc.std.Y
    + This is the mean of the measurements taken from tBodyAcc-std()-Y in the source data for the subject and activity.
* tBodyAcc.std.Z
    + This is the mean of the measurements taken from tBodyAcc-std()-Z in the source data for the subject and activity.
* tGravityAcc.mean.X
    + This is the mean of the measurements taken from tGravityAcc-mean()-X in the source data for the subject and activity.
* tGravityAcc.mean.Y
    + This is the mean of the measurements taken from tGravityAcc-mean()-X in the source data for the subject and activity.
* tGravityAcc.mean.Z
    + This is the mean of the measurements taken from tGravityAcc-mean()-X in the source data for the subject and activity.
* tGravityAcc.std.X
    + This is the mean of the measurements taken from tGravityAcc-std()-X in the source data for the subject and activity.
* tGravityAcc.std.Y
    + This is the mean of the measurements taken from tGravityAcc-std()-Y in the source data for the subject and activity.
* tGravityAcc.std.Z
    + This is the mean of the measurements taken from tGravityAcc-std()-Z in the source data for the subject and activity.
* tBodyAccJerk.mean.X
    + This is the mean of the measurements taken from tBodyAccJerk-mean()-X in the source data for the subject and activity.
* tBodyAccJerk.mean.Y
    + This is the mean of the measurements taken from tBodyAccJerk-mean()-Y in the source data for the subject and activity.
* tBodyAccJerk.mean.Z
    + This is the mean of the measurements taken from tBodyAccJerk-mean()-Z in the source data for the subject and activity.
* tBodyAccJerk.std.X
    + This is the mean of the measurements taken from tBodyAccJerk-std()-X in the source data for the subject and activity.
* tBodyAccJerk.std.Y
    + This is the mean of the measurements taken from tBodyAccJerk-std()-Y in the source data for the subject and activity.
* tBodyAccJerk.std.Z
    + This is the mean of the measurements taken from tBodyAccJerk-std()-Z in the source data for the subject and activity.
* tBodyGyro.mean.X
    + This is the mean of the measurements taken from tBodyGyro-mean()-X in the source data for the subject and activity.
* tBodyGyro.mean.Y
    + This is the mean of the measurements taken from tBodyGyro-mean()-Y in the source data for the subject and activity.
* tBodyGyro.mean.Z
    + This is the mean of the measurements taken from tBodyGyro-mean()-Z in the source data for the subject and activity.
* tBodyGyro.std.X
    + This is the mean of the measurements taken from tBodyGyro-std()-X in the source data for the subject and activity.
* tBodyGyro.std.Y
    + This is the mean of the measurements taken from tBodyGyro-std()-Y in the source data for the subject and activity.
* tBodyGyro.std.Z
    + This is the mean of the measurements taken from tBodyGyro-std()-Z in the source data for the subject and activity.
* tBodyGyroJerk.mean.X
    + This is the mean of the measurements taken from tBodyGyroJerk-mean()-X in the source data for the subject and activity.
* tBodyGyroJerk.mean.Y
    + This is the mean of the measurements taken from tBodyGyroJerk-mean()-Y in the source data for the subject and activity.
* tBodyGyroJerk.mean.Z
    + This is the mean of the measurements taken from tBodyGyroJerk-mean()-Z in the source data for the subject and activity.
* tBodyGyroJerk.std.X
    + This is the mean of the measurements taken from tBodyGyroJerk-std()-X in the source data for the subject and activity.
* tBodyGyroJerk.std.Y
    + This is the mean of the measurements taken from tBodyGyroJerk-std()-Y in the source data for the subject and activity.
* tBodyGyroJerk.std.Z
    + This is the mean of the measurements taken from tBodyGyroJerk-std()-Z in the source data for the subject and activity.
* tBodyAccMag.mean
    + This is the mean of the measurements taken from tBodyAccMag-mean() in the source data for the subject and activity.
* tBodyAccMag.std
    + This is the mean of the measurements taken from tBodyAccMag-std() in the source data for the subject and activity.
* tGravityAccMag.mean
    + This is the mean of the measurements taken from tGravityAccMag-mean() in the source data for the subject and activity.
* tGravityAccMag.std
    + This is the mean of the measurements taken from tGravityAccMag-std() in the source data for the subject and activity.
* tBodyAccJerkMag.mean
    + This is the mean of the measurements taken from tBodyAccJerkMag-mean() in the source data for the subject and activity.
* tBodyAccJerkMag.std
    + This is the mean of the measurements taken from tBodyAccJerkMag-std() in the source data for the subject and activity.
* tBodyGyroMag.mean
    + This is the mean of the measurements taken from tBodyGyroMag-mean() in the source data for the subject and activity.
* tBodyGyroMag.std
    + This is the mean of the measurements taken from tBodyGyroMag-std() in the source data for the subject and activity.
* tBodyGyroJerkMag.mean
    + This is the mean of the measurements taken from tBodyGyroJerkMag-mean() in the source data for the subject and activity.
* tBodyGyroJerkMag.std
    + This is the mean of the measurements taken from tBodyGyroJerkMag-std() in the source data for the subject and activity.
* fBodyAcc.mean.X
    + This is the mean of the measurements taken from fBodyAcc-mean()-X in the source data for the subject and activity.
* fBodyAcc.mean.Y
    + This is the mean of the measurements taken from fBodyAcc-mean()-Y in the source data for the subject and activity.
* fBodyAcc.mean.Z
    + This is the mean of the measurements taken from fBodyAcc-mean()-Z in the source data for the subject and activity.
* fBodyAcc.std.X
    + This is the mean of the measurements taken from fBodyAcc-std()-X in the source data for the subject and activity.
* fBodyAcc.std.Y
    + This is the mean of the measurements taken from fBodyAcc-std()-Y in the source data for the subject and activity.
* fBodyAcc.std.Z
    + This is the mean of the measurements taken from fBodyAcc-std()-Z in the source data for the subject and activity.
* fBodyAcc.meanFreq.X
    + This is the mean of the measurements taken from fBodyAcc-meanFreq()-X in the source data for the subject and activity.
* fBodyAcc.meanFreq.Y
    + This is the mean of the measurements taken from fBodyAcc-meanFreq()-Y in the source data for the subject and activity.
* fBodyAcc.meanFreq.Z
    + This is the mean of the measurements taken from fBodyAcc-meanFreq()-Z in the source data for the subject and activity.
* fBodyAccJerk.mean.X
    + This is the mean of the measurements taken from fBodyAccJerk-mean()-X in the source data for the subject and activity.
* fBodyAccJerk.mean.Y
    + This is the mean of the measurements taken from fBodyAccJerk-mean()-Y in the source data for the subject and activity.
* fBodyAccJerk.mean.Z
    + This is the mean of the measurements taken from fBodyAccJerk-mean()-Z in the source data for the subject and activity.
* fBodyAccJerk.std.X
    + This is the mean of the measurements taken from fBodyAccJerk-std()-X in the source data for the subject and activity.
* fBodyAccJerk.std.Y
    + This is the mean of the measurements taken from fBodyAccJerk-std()-Y in the source data for the subject and activity.
* fBodyAccJerk.std.Z
    + This is the mean of the measurements taken from fBodyAccJerk-std()-Z in the source data for the subject and activity.
* fBodyAccJerk.meanFreq.X
    + This is the mean of the measurements taken from fBodyAccJerk-meanFreq()-X in the source data for the subject and activity.
* fBodyAccJerk.meanFreq.Y
    + This is the mean of the measurements taken from fBodyAccJerk-meanFreq()-Y in the source data for the subject and activity.
* fBodyAccJerk.meanFreq.Z
    + This is the mean of the measurements taken from fBodyAccJerk-meanFreq()-Z in the source data for the subject and activity.
* fBodyGyro.mean.X
    + This is the mean of the measurements taken from fBodyGyro-mean()-X in the source data for the subject and activity.
* fBodyGyro.mean.Y
    + This is the mean of the measurements taken from fBodyGyro-mean()-Y in the source data for the subject and activity.
* fBodyGyro.mean.Z
    + This is the mean of the measurements taken from fBodyGyro-mean()-Z in the source data for the subject and activity.
* fBodyGyro.std.X
    + This is the mean of the measurements taken from fBodyGyro-std()-X in the source data for the subject and activity.
* fBodyGyro.std.Y
    + This is the mean of the measurements taken from fBodyGyro-std()-Y in the source data for the subject and activity.
* fBodyGyro.std.Z
    + This is the mean of the measurements taken from fBodyGyro-std()-Z in the source data for the subject and activity.
* fBodyGyro.meanFreq.X
    + This is the mean of the measurements taken from fBodyGyro-meanFreq()-X in the source data for the subject and activity.
* fBodyGyro.meanFreq.Y
    + This is the mean of the measurements taken from fBodyGyro-meanFreq()-Y in the source data for the subject and activity.
* fBodyGyro.meanFreq.Z
    + This is the mean of the measurements taken from fBodyGyro-meanFreq()-Z in the source data for the subject and activity.
* fBodyAccMag.mean
    + This is the mean of the measurements taken from fBodyAccMag-mean() in the source data for the subject and activity.
* fBodyAccMag.std
    + This is the mean of the measurements taken from fBodyAccMag-std() in the source data for the subject and activity.
* fBodyAccMag.meanFreq
    + This is the mean of the measurements taken from fBodyAccMag-meanFreq() in the source data for the subject and activity.
* fBodyBodyAccJerkMag.mean
    + This is the mean of the measurements taken from fBodyBodyAccJerkMag-mean() in the source data for the subject and activity.
* fBodyBodyAccJerkMag.std
    + This is the mean of the measurements taken from fBodyBodyAccJerkMag-std() in the source data for the subject and activity.
* fBodyBodyAccJerkMag.meanFreq
    + This is the mean of the measurements taken from fBodyBodyAccJerkMag-meanFreq() in the source data for the subject and activity.
* fBodyBodyGyroMag.mean
    + This is the mean of the measurements taken from fBodyBodyGyroMag-mean() in the source data for the subject and activity.
* fBodyBodyGyroMag.std
    + This is the mean of the measurements taken from fBodyBodyGyroMag-std() in the source data for the subject and activity.
* fBodyBodyGyroMag.meanFreq
    + This is the mean of the measurements taken from fBodyBodyGyroMag-meanFreq() in the source data for the subject and activity.
* fBodyBodyGyroJerkMag.mean
    + This is the mean of the measurements taken from fBodyBodyGyroJerkMag-mean() in the source data for the subject and activity.
* fBodyBodyGyroJerkMag.std
    + This is the mean of the measurements taken from fBodyBodyGyroJerkMag-std() in the source data for the subject and activity.
* fBodyBodyGyroJerkMag.meanFreq
    + This is the mean of the measurements taken from fBodyBodyGyroJerkMag-meanFreq() in the source data for the subject and activity.
* angle.tBodyAccMean.gravity
    + This is the mean of the measurements taken from angle(tBodyAccMean,gravity) in the source data for the subject and activity.
* angle.tBodyAccJerkMean.gravityMean
    + This is the mean of the measurements taken from angle(tBodyAccJerkMean),gravityMean) in the source data for the subject and activity.
* angle.tBodyGyroMean.gravityMean
    + This is the mean of the measurements taken from angle(tBodyGyroMean,gravityMean) in the source data for the subject and activity.
* angle.tBodyGyroJerkMean.gravityMean
    + This is the mean of the measurements taken from angle(tBodyGyroJerkMean,gravityMean) in the source data for the subject and activity.
* angle.X.gravityMean
    + This is the mean of the measurements taken from angle(X,gravityMean) in the source data for the subject and activity.
* angle.Y.gravityMean
    + This is the mean of the measurements taken from angle(Y,gravityMean) in the source data for the subject and activity.
* angle.Z.gravityMean
    + This is the mean of the measurements taken from angle(Z,gravityMean) in the source data for the subject and activity.