
# Create one R script called run_analysis.R that does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names.
# 5. From the data set in step 4, creates  a second, independent tidy data set with the average of each variable for each activity and each subject.

# Check if the data exists
if(!file.exists("./data")){
  dir.create("./data")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")
dataDownloaded <- date()

#################################################################################################
# 1. Merge the training and the test sets to create one data set.

# Read training data
xTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")


# Read test data
xTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
View(xTest)

# Make sure the test and train data sets have the same number of variables/features
if (dim(xTrain)[2] == dim(xTest)[2]){
  # Merging the two sets to create one dataset
  xData <- rbind(xTrain,xTest)
}

# Make sure the test and train label data have the same number of columns
if (dim(yTrain)[2] == dim(yTest)[2]){
  # Merging the two sets to create one dataset
  yData <- rbind(yTrain,yTest)
}

# Same for the sub data
if (dim(subTrain)[2] == dim(subTest)[2]){
  # Merging the two sets to create one dataset
  subData <- rbind(subTrain,subTest)
}

#################################################################################################

# 2. Extract only the measurements on the mean and standard deviation for each measurement.

features <- read.table("./data/UCI HAR Dataset/features.txt")

# Search for mean and std in the features dataset
meanSDData <- grep("-(mean|std)\\(\\)", features[, 2])

# Subset with the desired output from the merged data set
xData1 <- xData[, meanSDData]

# Add the right col names
names(xData1) <- features[meanSDData, 2]


#################################################################################################

# 3. Use descriptive activity names to name the activities in the data set

activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# update the activity names to the labels data
yData1 <- yData
yData1[, 1] <- activities[yData[ ,1], 2]

# Update the column name to read "Activities"
names(yData1) <- "Activity"


#################################################################################################

# 4. Appropriately labels the data set with descriptive activity names.

names(subData) <- "Subject"

# Merge the data, labels, subject into one final dataset
dataFinal <- cbind(xData1, yData1, subData)

#################################################################################################

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity 
# and each subject.

library(plyr);
# Aggregate by the mean for each variable, for each activity and subject
dataNew<-aggregate(. ~Subject + Activity, dataFinal, mean)

# For better presentation, order this on Subject and Activity
dataNew<-dataNew[order(dataNew$Subject,dataNew$Activity),]

# Write to text file as per project instructions:
# Please upload your data set as a txt file created with write.table() using row.name=FALSE 
write.table(dataNew, file = "tidydata.txt",row.name=FALSE)


#################################################################################################
