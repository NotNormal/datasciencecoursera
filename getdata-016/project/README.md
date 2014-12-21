---
title: "README"
author: "Sean Smitz"
date: "21 December, 2014"
output: html_document
---

run_analysis.R operates on the data contained in ./project-data/UCI HAR Dataset.

* It reads the following files:
    + activity_labels.txt as data.table
    + features.txt as data.frame
    + [test|train]/subject_[test|train].txt as data.frame
    + [test|train]/y_[test|train].txt as data.frame
    + [test|train]/X_[test|train].txt as data.frame

* It modifies the data labels in features so they produce valid and neat column names for the X data.  
* The following steps are performed for the test and train data sets:  
    + It column binds the subject data with the y data and the x data; filtering the x data for columns that are means or standard deviations for a measurement.  
    + The activity labels are then mapped to the resulting data.table.  
    + The columns are then re-ordered to swap the activityId and activity columns.    

* The two data sets (test and train) are then combined and the activityId column is dropped.  
* The data set is then grouped by subject and activity.  
* Then the mean of each statistics column (and subjectId, but that's meaningless) is taken for each group and the resulting table is written to the ./output directory.