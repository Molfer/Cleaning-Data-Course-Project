CodeBook
========
CodeBook describes the variables, the data, and transformations performed to clean up the data.
## Data
**Data.frames:**
 - activity.labels - imported from "UCI HAR Dataset/features.txt" - links the class labels with their activity name.
 - features - imported from "UCI HAR Dataset/activity_labels.txt" - List of all features
 - x.train - imported from "UCI HAR Dataset/train/X_train.txt" - Training set
 - y.train - imported from "UCI HAR Dataset/train/y_train.txt" - Training labels
 - subject.train - imported from "UCI HAR Dataset/train/subject_train.txt" - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
 - x.test - imported from "UCI HAR Dataset/test/X_test.txt" - Test set
 - y.test - imported from "UCI HAR Dataset/test/y_test.txt" - Test labels
 - subject.test - imported from "UCI HAR Dataset/test/subject_test.txt" - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
 - test  - data.frame that containts subject.test data.frame, y.test converted to factor data and x.test data.fram combine by columns
 - train  - data.frame that containts subject.train data.frame, y.train converted to factor data and x.train data.fram combine by columns
 - mean.std  - data.frame createb by extracting variables from test.train data.frame using logical vector "var.list"
 - tidy.data - data.frame with the average of each variable for each activity and each subject from mean.std data.frame
 
**Vectors:**
 - var.list - logical vector - TRUE value when features$V2 contains string "mean()" or "std()"

## Variables
**Data.frames:**  
 - activity.labels
 
    V1 - Categorical variable - labels for V2 (1, 2, 3, 4, 5, 6)  
    V2 - Categorical variable - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
    
 - features
 
    V1 - Categorical variable - labels for V2 (1, 2, 3, ..., 29, 30)  
    V2 - Categorical variable - contains list of variables for x.test and x.train
    
 - x.train
 - y.train
 - subject.train
 - x.test
 - y.test
 - subject.test
 - test
 - train
 - mean.std
 - tidy.data - *see tidy data section*
    
    
- Vectors:
 - var.list `logical vector`

## Transformations

1. Variables names form `features` data.frame were changed by:
 * changing all upper case to lower case and adding dot `(.)` before
 * changing: `',', '-', '(', ')'` into dots `(.)`
 * removing excessive dots `(.)` and dots at the end of the line
2. Convert `y.test$V1` and `y.train$V1` into factor variables using `activity.labels$V2`
3. `test` and `train` data.frame were combined by rows into `test.train` data frame
4. 
5. `mean.std` data.frame were transformed into `tidy.data` data.frame with the average of each variable for each activity and each subject

## Tidy data variables

    subject - the subject who performed the activity for each window sample  
    activity - activity name  
    t.body.acc.mean.x - average mean value of a body acceleration time in the X direction  
    t.body.acc.mean.y - average mean value of a body acceleration time in the Y direction  
    t.body.acc.mean.z - average mean value of a body acceleration time in the Z direction  
    t.body.acc.std.x - average standard deviation of a body acceleration time in the X direction 
    t.body.acc.std.y - average standard deviation of a body acceleration time in the Y direction  
    t.body.acc.std.z - average standard deviation of a body acceleration time in the Z direction  
    t.gravity.acc.mean.x - average mean value of a gravity acceleration time in the X direction  
    t.gravity.acc.mean.y - average mean time of a gravity acceleration time in the Y direction  
    t.gravity.acc.mean.z - average mean time of a gravity acceleration time in the Z direction  
    t.gravity.acc.std.x - average standard deviation of a gravity acceleration time in the X direction  
    t.gravity.acc.std.y - average standard deviation of a gravity acceleration time in the Y direction  
    t.gravity.acc.std.z - average standard deviation of a gravity acceleration time in the Z direction  
    t.body.acc.jerk.mean.x - average mean jerk signal of a body acceleration time in the X direction  
    t.body.acc.jerk.mean.y - average mean jerk signal of a body acceleration time in the Y direction  
    t.body.acc.jerk.mean.z - average mean jerk signal of a body acceleration time in the Z direction  
    t.body.acc.jerk.std.x - average standard deviation of a jerk signal of a body acceleration time in the X direction 
    t.body.acc.jerk.std.y - average standard deviation of a jerk signal of a body acceleration time in the Y direction 
    t.body.acc.jerk.std.z - average standard deviation of a jerk signal of a body acceleration time in the Z direction 
    t.body.gyro.mean.x - average mean value of a body angular velocity time in the X direction     
    t.body.gyro.mean.y - average mean value of a body angular velocity time in the Y direction  
    t.body.gyro.mean.z - average mean value of a body angular velocity time in the Z direction  
    t.body.gyro.std.x - average standard deviation of a body angular velocity time in the X direction 
    t.body.gyro.std.y - average standard deviation of a body angular velocity time in the Y direction  
    t.body.gyro.std.z - average standard deviation of a body angular velocity time in the Z direction  
    t.body.gyro.jerk.mean.x - average mean jerk signal of a body angular velocity time in the X direction 
    t.body.gyro.jerk.mean.y - average mean jerk signal of a body angular velocity time in the Y direction  
    t.body.gyro.jerk.mean.z - average mean jerk signal of a body angular velocity time in the Z direction  
    t.body.gyro.jerk.std.x - average standard deviation of a jerk signal of a body angular velocity time in the X direction 
    t.body.gyro.jerk.std.y - average standard deviation of a jerk signal of a body angular velocity time in the Y direction  
    t.body.gyro.jerk.std.z - average standard deviation of a jerk signal of a body angular velocity time in the Z direction  
    t.body.acc.mag.mean - average mean magnitude signal of a body acceleration time   
    t.body.acc.mag.std - average standard deviation of a magnitude signal of a body acceleration time  
    t.gravity.acc.mag.mean -  average mean magnitude of a gravity acceleration time in the X direction  
    t.gravity.acc.mag.std - average standard deviation of a magnitude of a gravity acceleration time in the X direction 

    f.body.acc.mean.x - average mean value of a body acceleration frequency in the X direction  
    f.body.acc.mean.y - average mean value of a body acceleration frequency in the Y direction  
    f.body.acc.mean.z - average mean value of a body acceleration frequency in the Z direction  
    f.body.acc.std.x - average standard deviation of a body acceleration frequency in the X direction 
    f.body.acc.std.y - average standard deviation of a body acceleration frequency in the Y direction 
    f.body.acc.std.z - average standard deviation of a body acceleration frequency in the Z direction  
    f.body.acc.jerk.mean.x - average mean jerk signal of a body acceleration frequency in the X direction  
    f.body.acc.jerk.mean.y - average mean jerk signal of a body acceleration frequency in the Y direction  
    f.body.acc.jerk.mean.z - average mean jerk signal of a body acceleration frequency in the Z direction  
    f.body.acc.jerk.std.x - average standard deviation of a jerk signal of a body acceleration frequency in the X direction 
    f.body.acc.jerk.std.y - average standard deviation of a jerk signal of a body acceleration frequency in the Y direction 
    f.body.acc.jerk.std.z - average standard deviation of a jerk signal of a body acceleration frequency in the Z direction  
    f.body.gyro.mean.x - average mean value of a body angular velocity frequency in the X direction  
    f.body.gyro.mean.y - average mean value of a body angular velocity frequency in the Y direction  
    f.body.gyro.mean.z - average mean value of a body angular velocity frequency in the Z direction  
    f.body.gyro.std.x - average standard deviation of a body angular velocity frequency in the X direction  
    f.body.gyro.std.y - average standard deviation of a body angular velocity frequency in the Y direction  
    f.body.gyro.std.z - average standard deviation of a body angular velocity frequency in the Z direction   
    f.body.acc.mag.mean - average mean magnitude signal of a body acceleration frequency  
    f.body.acc.mag.std - average standard deviation of a magnitude signal of a body acceleration frequency  