# Getting-and-Cleaning-Data-Course-Project
This repository contains files that were created as part of Coursera's "Getting and Cleaning Data" course project

## Project Requirement
For this project we were required to create a R script __run_analysis.R__ which does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. From the data set in step 4, creates  a second, independent tidy data set with the average of each variable for each activity and         each subject.

Apart from __run_analysis.R__ we were required to create a codebook, __codebook.md__ which describes each of the variables from the data used in this project.

## Project Deliverables
1. run_analysis.R
2. codebook.md
3. tidydata.txt

## Data and Source
The dataset that is used in the project is the __Human Activity Recognition Using Smartphones Data Set__. 
Data for the project was downloaded from the following source
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data comprises of train and test data sets along with description and labels for activity and features.

More details on the data itself can be found in the __codebook.md__ file that has been created as part of the project deliverables.

## Script Details
This script downloads the data zip file provided at the data source to the __"/data"__ folder under the current working directory. The zipped file is then extracted into the folder __"/data/UCI HAR Dataset"__.

1. The first step in the script is to read the different datasets to merge into a large dataset. The data that was merged included the training and test data (X), training and test data labels (y) and the subject label (volunteer id), providing 3 large datasets for each of the category described (X, y and subject)
2. Once the data is merged, into a single large dataset, the __features__ data is read. The __features__ dataset comprises of __561__ different parameters against which the measurements were taken, including mean and standard deviation. The second step in the script was to extract all the means and standard deviation indices in the __features__ data and subset the large dataset (from step 1) with the features indices
3. No data makes much sense unless labelled with descriptive names, which is what is achieved in step 3 of the script. 
4. Once this is done, the three datasets (X, y and subject) were merged into a larger dataset, which I chose to name dataFinal, which is a tidy dataset, representing 66 variables across describing mean and standard deviation across several observations.
5. A new tidy dataset is then created which aggregated the data from step 4 above by the mean for each variable, for each activity and each subject (volunteer)

## How to create the tidy data set
1. clone this repository: git clone https://github.com/arblak/Getting-and-Cleaning-Data-Course-Project.git
2. download compressed raw data
3. unzip raw data and copy the directory UCI HAR Dataset to the cloned repository root directory
4. open a R console and set the working directory to the repository root (use setwd())
5. source __run_analysis.R__ script (it requires the plyr package): source('run_analysis.R')

In the repository root directory you find the file __tidydata.txt__ with the tidy data set.





