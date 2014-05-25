Getting and Cleaning Data Course Project
========================================

## Files list:
- run_analysis.R - main script
- README.md - explains how the script works
- CodeBook.md - describes the variables, the data, transformations used to clean up the data

- 'UCI HAR Dataset/README.txt'
- 'UCI HAR Dataset/features_info.txt': Shows information about the variables used on the feature vector.
- 'UCI HAR Dataset/features.txt': List of all features.
- 'UCI HAR Dataset/activity_labels.txt': Links the class labels with their activity name.
- 'UCI HAR Dataset/train/X_train.txt': Training set.
- 'UCI HAR Dataset/train/y_train.txt': Training labels.
- 'UCI HAR Dataset/test/X_test.txt': Test set.
- 'UCI HAR Dataset/test/y_test.txt': Test labels.
*(from UCI HAR Dataset/README.txt)*

## Before running the script:
Before running the *run_analysis.R* script, download zip file from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and extract all files into your working directory. All file should be in "UCI HAR Dataset" directory.

## How run_analysis.R script works:
- run_analysis.R reads all required files,
- changes labels to cleaner format,
- merges test, train, labels and activity data.frames into one data.frame (test.train),
- extracts measurements on the mean and standard deviation for each measurement from *test.train* data.frame 
- create tidy data set with the average of each variable for each activity and each subject from *test.train* data.frame,
- exports tidy data to "*tidy.data.txt*" file using write.table function.
