## Code to download and unzip the data, if user has not done them already
 
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile)}

}  

dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}

## Load activity labels
### The first line will give you a data frame while the second line will get you the labels 
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabelsChar <- as.character(activityLabels[,2]) ## this code will get the 

-----------------changed label for activitylabels and features
## Load activity labels
features <- read.table("UCI HAR Dataset/features.txt")
featuresChar <- as.character(features[,2])


## Load the data set
# read training data
trainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
trainingValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))
train <- cbind(trainSubjects,trainingValues, trainActivities)

# read test data
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))
test <- cbind(testSubjects, testValues, testActivity)

## Merge dataset
merged<-rbind(train,test)

## Assign column names to the merged dataset
colnames(merged) <- c("subject", features[, 2], "activity")

## Extracting the needed columns
### Load dplyr package first if not loaded already

library(dplyr)
needed<-merged[,grepl("subject|activity|mean|std", colnames(merged))]

## Turing activity and subject into factors
needed$activity <- factor(needed$activity, levels = activityLabels[,1], labels = activityLabels[,2])
needed$subject <- as.factor(needed$subject)

## Melting the needed data
needed.melted <- melt(needed, id = c("subject", "activity"))

## writing the table
needed.mean <- dcast(needed.melted, subject + activity ~ variable, mean)
write.table(needed.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
