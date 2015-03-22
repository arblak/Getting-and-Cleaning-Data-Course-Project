# Codebook for the tidy dataset - Getting and Cleaning Data project

## Data Source and acknowledgements
The dataset that is used in the project is the __Human Activity Recognition Using Smartphones Data Set (Version 1.0)__.

Acknowledgements:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

Data for the project was downloaded from the following source
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Description of the Data
Data was collated from experiments on 30 volunteers within the age range of 19-48 years performing different activities while wearing the smartphone (Samsung Galaxy S II) on the waist. 3-axial linear acceleration and 3-axial angular velocity at constant rate of 50Hz were recorded using the embedded accelerometer and gyroscope.

## Data provided for the project
The dataset includes the following files:

- README.txt: Gives the overview of the data.

- features_info.txt: Shows information about the variables used on the feature vector.

- features.txt: List of all features.

- activity_labels.txt: Links the class labels with their activity name.

- train/X_train.txt: Training set.

- train/y_train.txt: Training labels.

- test/X_test.txt: Test set.

- test/y_test.txt: Test labels.

## Activity Labels
The volunteers/subjects were measured across various parameters/measurements while peforming the following activities

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. A total of __561__ features are available in the dataset.
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

1. mean(): Mean value
2. std(): Standard deviation
3. mad(): Median absolute deviation 
4. max(): Largest value in array
5. min(): Smallest value in array
6. sma(): Signal magnitude area
7. energy(): Energy measure. Sum of the squares divided by the number of values. 
8. iqr(): Interquartile range 
9. entropy(): Signal entropy
10. arCoeff(): Autorregresion coefficients with Burg order equal to 4
11. correlation(): correlation coefficient between two signals
12. maxInds(): index of the frequency component with largest magnitude
13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14. skewness(): skewness of the frequency domain signal 
16 kurtosis(): kurtosis of the frequency domain signal 
17. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
18. angle(): Angle between to vectors.

Additional vectors were obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

1. gravityMean
2. tBodyAccMean
3. tBodyAccJerkMean
4. tBodyGyroMean
5. tBodyGyroJerkMean

