################
##
## Importing data
##

features <- read.table("UCI HAR Dataset/features.txt")
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")

x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")

################
##
## Cleaning names of variables
##

features$names <- gsub("([A-Z])", ".\\L\\1", features[,2], perl=T) # convert upper case to lower case and add dot(.)
features$names <- gsub("[,-\\(\\)]", ".", features$names) # change: ',', '-', '(', ')' to dots(.)
features$names <- gsub("\\.+", ".", features$names)# remove excessive dots
features$names <- gsub("\\.$", "", features$names)# remove dot at the end of the line

names(x.test) <- features$names
names(x.train) <- features$names

################
##
## Merging test and train data
## 

test <- cbind(subject.test, factor(x=y.test$V1, levels=1:6, labels=activity.labels$V2), x.test)
train <- cbind(subject.train, factor(x=y.train$V1, levels=1:6, labels=activity.labels$V2), x.train)
names(test)[1:2] <- c("subject", "activity")
names(train)[1:2] <- c("subject", "activity")

test.train <- rbind(test, train)

################
##
## Extracting mean and std data
##

var.list <- c(T,T,grepl("(mean\\(\\)|std\\(\\))", features$V2))
mean.std <- test.train[,var.list]

################
##
## Computing average of each variable for each activity and each subject
##

library(plyr) # load plyr library required to use ddply function

tidy.data <- ddply(mean.std, .(subject, activity), numcolwise(mean))

################
##
## Exporting tidy data to file
##

write.table(tidy.data, file="tidy.data.txt")
