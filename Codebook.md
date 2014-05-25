Codebook for Course Project - Getting and Cleaning Data
========================================================

The "tidyDataset.csv" file is a table that contains the averages of selected variables by activity for each subject from the *Human Activity Recognition Using Smartphones Data Set* (original data set).

The selected variables (60 variables out of 561) are a collection of mean and standard deviations of accelerometer and gyroscope 3-axial raw signals in time and some transformed signals (Fast Fourier, frequency domain). The selected variables for the "tidyDataset" table were renamed for interpretation purposes. The table below indicates the name of the variable in the original data set, the new (renamed) variable name, and a brief description of the variable interpretation.

Original data set citation:  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  


|    | Original variable name  | Renamed variable                             | Description                                                                                            |
|----|-------------------------|----------------------------------------------|--------------------------------------------------------------------------------------------------------|
| 1  | subject                 | subject                                      | Subject identifier                                                                                     |
| 2  | activityCode            | activityCode                                 | Activity identifier                                                                                    |
| 3  | activityLabel           | activityLabel                                | Activity description                                                                                   |
| 4  | tBodyAcc-mean()-X       | timeBodyAccelerationMeanX                    | Measurement in time for body acceleration signal in the X-axis(mean)                                   |
| 5  | tBodyAcc-mean()-Y       | timeBodyAccelerationMeanY                    | Measurement in time for body acceleration signal in the Y-axis(mean)                                   |
| 6  | tBodyAcc-mean()-Z       | timeBodyAccelerationMeanZ                    | Measurement in time for body acceleration signal in the Z-axis(mean)                                   |
| 7  | tBodyAcc-std()-X        | timeBodyAccelerationStdeviationX             | Measurement in time for body acceleration signal in the X-axis(standard deviation)                     |
| 8  | tBodyAcc-std()-Y        | timeBodyAccelerationStdeviationY             | Measurement in time for body acceleration signal in the Y-axis(standard deviation)                     |
| 9  | tBodyAcc-std()-Z        | timeBodyAccelerationStdeviationZ             | Measurement in time for body acceleration signal in the Z-axis(standard deviation)                     |
| 10 | tGravityAcc-mean()-X    | timeGravityAccelerationMeanX                 | Measurement in time for gravity acceleration signal inthe X-axis(mean)                                 |
| 11 | tGravityAcc-mean()-Y    | timeGravityAccelerationMeanY                 | Measurement in time for gravity acceleration signal inthe Y-axis(mean)                                 |
| 12 | tGravityAcc-mean()-Z    | timeGravityAccelerationMeanZ                 | Measurement in time for gravity acceleration signal inthe Z-axis(mean)                                 |
| 13 | tGravityAcc-std()-X     | timeGravityAccelerationStdeviationX          | Measurement in time for gravity acceleration signal inthe X-axis(standard deviation)                   |
| 14 | tGravityAcc-std()-Y     | timeGravityAccelerationStdeviationY          | Measurement in time for gravity acceleration signal inthe Y-axis(standard deviation)                   |
| 15 | tGravityAcc-std()-Z     | timeGravityAccelerationStdeviationZ          | Measurement in time for gravity acceleration signal inthe Z-axis(standard deviation)                   |
| 16 | tBodyAccJerk-mean()-X   | timeBodyAccelerationJerkMeanX                | Measurement in time for body jerk acceleration signal inthe X-axis(mean)                               |
| 17 | tBodyAccJerk-mean()-Y   | timeBodyAccelerationJerkMeanY                | Measurement in time for body jerk acceleration signal inthe Y-axis(mean)                               |
| 18 | tBodyAccJerk-mean()-Z   | timeBodyAccelerationJerkMeanZ                | Measurement in time for body jerk acceleration signal inthe Z-axis(mean)                               |
| 19 | tBodyAccJerk-std()-X    | timeBodyAccelerationJerkStdeviationX         | Measurement in time for body jerk acceleration signal inthe X-axis(standard deviation)                 |
| 20 | tBodyAccJerk-std()-Y    | timeBodyAccelerationJerkStdeviationY         | Measurement in time for body jerk acceleration signal inthe Y-axis(standard deviation)                 |
| 21 | tBodyAccJerk-std()-Z    | timeBodyAccelerationJerkStdeviationZ         | Measurement in time for body jerk acceleration signal inthe Z-axis(standard deviation)                 |
| 22 | tBodyGyro-mean()-X      | timeBodyGyroscopicMeanX                      | Measurement in time for body gyroscopic signal inthe X-axis(mean)                                      |
| 23 | tBodyGyro-mean()-Y      | timeBodyGyroscopicMeanY                      | Measurement in time for body gyroscopic signal inthe Y-axis(mean)                                      |
| 24 | tBodyGyro-mean()-Z      | timeBodyGyroscopicMeanZ                      | Measurement in time for body gyroscopic signal inthe Z-axis(mean)                                      |
| 25 | tBodyGyro-std()-X       | timeBodyGyroscopicStdeviationX               | Measurement in time for body gyroscopic signal inthe X-axis(standard deviation)                        |
| 26 | tBodyGyro-std()-Y       | timeBodyGyroscopicStdeviationY               | Measurement in time for body gyroscopic signal inthe Y-axis(standard deviation)                        |
| 27 | tBodyGyro-std()-Z       | timeBodyGyroscopicStdeviationZ               | Measurement in time for body gyroscopic signal inthe Z-axis(standard deviation)                        |
| 28 | tBodyGyroJerk-mean()-X  | timeBodyGyroscopicJerkMeanX                  | Measurement in time for body gyroscopic signal inthe X-axis(mean)                                      |
| 29 | tBodyGyroJerk-mean()-Y  | timeBodyGyroscopicJerkMeanY                  | Measurement in time for body jerk gyroscopic signal inthe Y-axis(mean)                                 |
| 30 | tBodyGyroJerk-mean()-Z  | timeBodyGyroscopicJerkMeanZ                  | Measurement in time for body jerk gyroscopic signal inthe Z-axis(mean)                                 |
| 31 | tBodyGyroJerk-std()-X   | timeBodyGyroscopicJerkStdeviationX           | Measurement in time for body jerk gyroscopic signal inthe X-axis(standard deviation)                   |
| 32 | tBodyGyroJerk-std()-Y   | timeBodyGyroscopicJerkStdeviationY           | Measurement in time for body jerk gyroscopic signal inthe Y-axis(standard deviation)                   |
| 33 | tBodyGyroJerk-std()-Z   | timeBodyGyroscopicJerkStdeviationZ           | Measurement in time for body jerk gyroscopic signal inthe Z-axis(standard deviation)                   |
| 34 | tBodyAccMag-mean()      | timeBodyAccelerationMagnitudeMean            | Measurement in time for body acceleration signal as absolute magnitude(mean)                           |
| 35 | tBodyAccMag-std()       | timeBodyAccelerationMagnitudeStdeviation     | Measurement in time for body acceleration signal as absolute magnitude(standard deviation)             |
| 36 | tGravityAccMag-mean()   | timeGravityAccelerationMagnitudeMean         | Measurement in time for gravity acceleration signal as absolute magnitude(mean)                        |
| 37 | tGravityAccMag-std()    | timeGravityAccelerationMagnitudeStdeviation  | Measurement in time for gravity acceleration signal as absolute magnitude(standard deviation)          |
| 38 | tBodyAccJerkMag-mean()  | timeBodyAccelerationJerkMagnitudeMean        | Measurement in time for body jerk acceleration signal as absolute magnitude(mean)                      |
| 39 | tBodyAccJerkMag-std()   | timeBodyAccelerationJerkMagnitudeStdeviation | Measurement in time for body jerk acceleration signal as absolute magnitude(standard deviation)        |
| 40 | tBodyGyroMag-mean()     | timeBodyGyroscopicMagnitudeMean              | Measurement in time for body gyroscopic signal as absolute magnitude(mean)                             |
| 41 | tBodyGyroMag-std()      | timeBodyGyroscopicMagnitudeStdeviation       | Measurement in time for body gyroscopic signal as absolute magnitude(standard deviation)               |
| 42 | tBodyGyroJerkMag-mean() | timeBodyGyroscopicJerkMagnitudeMean          | Measurement in time for body jerk gyroscopic signal as absolute magnitude(mean)                        |
| 43 | tBodyGyroJerkMag-std()  | timeBodyGyroscopicJerkMagnitudeStdeviation   | Measurement in time for body jerk gyroscopic signal as absolute magnitude(standard deviation)          |
| 44 | fBodyAcc-mean()-X       | fourierBodyAccelerationMeanX                 | Measurement in frequency domain for body acceleration signal in the X-axis(mean)                       |
| 45 | fBodyAcc-mean()-Y       | fourierBodyAccelerationMeanY                 | Measurement in frequency domain for body acceleration signal in the Y-axis(mean)                       |
| 46 | fBodyAcc-mean()-Z       | fourierBodyAccelerationMeanZ                 | Measurement in frequency domain for body acceleration signal in the Z-axis(mean)                       |
| 47 | fBodyAcc-std()-X        | fourierBodyAccelerationStdeviationX          | Measurement in frequency domain for body acceleration signal in the X-axis(standard deviation)         |
| 48 | fBodyAcc-std()-Y        | fourierBodyAccelerationStdeviationY          | Measurement in frequency domain for body acceleration signal in the Y-axis(standard deviation)         |
| 49 | fBodyAcc-std()-Z        | fourierBodyAccelerationStdeviationZ          | Measurement in frequency domain for body acceleration signal in the Z-axis(standard deviation)         |
| 50 | fBodyAccJerk-mean()-X   | fourierBodyAccelerationJerkMeanX             | Measurement in frequency domain for body jerk acceleration signal inthe X-axis(mean)                   |
| 51 | fBodyAccJerk-mean()-Y   | fourierBodyAccelerationJerkMeanY             | Measurement in frequency domain for body jerk acceleration signal inthe Y-axis(mean)                   |
| 52 | fBodyAccJerk-mean()-Z   | fourierBodyAccelerationJerkMeanZ             | Measurement in frequency domain for body jerk acceleration signal inthe Z-axis(mean)                   |
| 53 | fBodyAccJerk-std()-X    | fourierBodyAccelerationJerkStdeviationX      | Measurement in frequency domain for body jerk acceleration signal inthe X-axis(standard deviation)     |
| 54 | fBodyAccJerk-std()-Y    | fourierBodyAccelerationJerkStdeviationY      | Measurement in frequency domain for body jerk acceleration signal inthe Y-axis(standard deviation)     |
| 55 | fBodyAccJerk-std()-Z    | fourierBodyAccelerationJerkStdeviationZ      | Measurement in frequency domain for body jerk acceleration signal inthe Z-axis(standard deviation)     |
| 56 | fBodyGyro-mean()-X      | fourierBodyGyroscopicMeanX                   | Measurement in frequency domain for body gyroscopic signal inthe X-axis(mean)                          |
| 57 | fBodyGyro-mean()-Y      | fourierBodyGyroscopicMeanY                   | Measurement in frequency domain for body gyroscopic signal inthe Y-axis(mean)                          |
| 58 | fBodyGyro-mean()-Z      | fourierBodyGyroscopicMeanZ                   | Measurement in frequency domain for body gyroscopic signal inthe Z-axis(mean)                          |
| 59 | fBodyGyro-std()-X       | fourierBodyGyroscopicStdeviationX            | Measurement in frequency domain for body gyroscopic signal inthe X-axis(standard deviation)            |
| 60 | fBodyGyro-std()-Y       | fourierBodyGyroscopicStdeviationY            | Measurement in frequency domain for body gyroscopic signal inthe Y-axis(standard deviation)            |
| 61 | fBodyGyro-std()-Z       | fourierBodyGyroscopicStdeviationZ            | Measurement in frequency domain for body gyroscopic signal inthe Z-axis(standard deviation)            |
| 62 | fBodyAccMag-mean()      | fourierBodyAccelerationMagnitudeMean         | Measurement in frequency domain for body acceleration signal as absolute magnitude(mean)               |
| 63 | fBodyAccMag-std()       | fourierBodyAccelerationMagnitudeStdeviation  | Measurement in frequency domain for body acceleration signal as absolute magnitude(standard deviation) |
