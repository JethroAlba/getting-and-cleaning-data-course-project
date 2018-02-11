# Description
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

# Source Data
A full description of the data used in this project can be found at The UCI Machine Learning Repository
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

The source data for this project can be found here [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

# Data Set Information (taken UC Irvine Machine Learning Repository)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Attribute Information (taken from UC Irvine Machine Learning Repository)
For each record in the dataset it is provided:

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.
Section 1. Merge the training and the test sets to create one data set.
After setting the source directory for the files, read into tables the data located in

    features.txt
    activity_labels.txt
    subject_train.txt
    x_train.txt
    y_train.txt
    subject_test.txt
    x_test.txt
    y_test.txt


The R script run_analysis.R can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps (see the Code book for details, as well as the comments in the script itself):

    1. Download and unzip source data if it doesn't exist.
    2. Read data.
    3. Merge the training and the test sets to create one data set.
    4. Extract only the measurements on the mean and standard deviation for each measurement.
    5. Use descriptive activity names to name the activities in the data set.
    6. Appropriately label the data set with descriptive variable names.
    7. Create a second, independent tidy set with the average of each variable for each activity and each subject.
    8. Write the data set to the tidy_data.txt file.

The tidy_data.txt in this repository was created by running the run_analysis.R script using R 

This script requires the dplyr package (version 0.4.3 was used).

# Time-domain signals
Average time-domain body acceleration in the X, Y and Z directions:

    timeDomainBodyAccelerometerMeanX
    timeDomainBodyAccelerometerMeanY
    timeDomainBodyAccelerometerMeanZ
 
Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

    timeDomainBodyAccelerometerStandardDeviationX
    timeDomainBodyAccelerometerStandardDeviationY
    timeDomainBodyAccelerometerStandardDeviationZ
    
Average time-domain gravity acceleration in the X, Y and Z directions:

    timeDomainGravityAccelerometerMeanX
    timeDomainGravityAccelerometerMeanY
    timeDomainGravityAccelerometerMeanZ
    
Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

    timeDomainGravityAccelerometerStandardDeviationX
    timeDomainGravityAccelerometerStandardDeviationY
    timeDomainGravityAccelerometerStandardDeviationZ
    
Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

    timeDomainBodyAccelerometerJerkMeanX
    timeDomainBodyAccelerometerJerkMeanY
    timeDomainBodyAccelerometerJerkMeanZ
    
Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

    timeDomainBodyAccelerometerJerkStandardDeviationX
    timeDomainBodyAccelerometerJerkStandardDeviationY
    timeDomainBodyAccelerometerJerkStandardDeviationZ
    
Average time-domain body angular velocity in the X, Y and Z directions:

    timeDomainBodyGyroscopeMeanX
    timeDomainBodyGyroscopeMeanY
    timeDomainBodyGyroscopeMeanZ
    
Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

    timeDomainBodyGyroscopeStandardDeviationX
    timeDomainBodyGyroscopeStandardDeviationY
    timeDomainBodyGyroscopeStandardDeviationZ
    
Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

    timeDomainBodyGyroscopeJerkMeanX
    timeDomainBodyGyroscopeJerkMeanY
    timeDomainBodyGyroscopeJerkMeanZ
    
Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

    timeDomainBodyGyroscopeJerkStandardDeviationX
    timeDomainBodyGyroscopeJerkStandardDeviationY
    timeDomainBodyGyroscopeJerkStandardDeviationZ
    
Average and standard deviation of the time-domain magnitude of body acceleration:

    timeDomainBodyAccelerometerMagnitudeMean
    timeDomainBodyAccelerometerMagnitudeStandardDeviation
    
Average and standard deviation of the time-domain magnitude of gravity acceleration:

    timeDomainGravityAccelerometerMagnitudeMean
    timeDomainGravityAccelerometerMagnitudeStandardDeviation
    
Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

    timeDomainBodyAccelerometerJerkMagnitudeMean
    timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
    
Average and standard deviation of the time-domain magnitude of body angular velocity:

    timeDomainBodyGyroscopeMagnitudeMean
    timeDomainBodyGyroscopeMagnitudeStandardDeviation
    
Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

    timeDomainBodyGyroscopeJerkMagnitudeMean
    timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
    Frequency-domain signals
    
Average frequency-domain body acceleration in the X, Y and Z directions:

    frequencyDomainBodyAccelerometerMeanX
    frequencyDomainBodyAccelerometerMeanY
    frequencyDomainBodyAccelerometerMeanZ
    
Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

    frequencyDomainBodyAccelerometerStandardDeviationX
    frequencyDomainBodyAccelerometerStandardDeviationY
    frequencyDomainBodyAccelerometerStandardDeviationZ
    
Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

    frequencyDomainBodyAccelerometerMeanFrequencyX
    frequencyDomainBodyAccelerometerMeanFrequencyY
    frequencyDomainBodyAccelerometerMeanFrequencyZ
    
Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

    frequencyDomainBodyAccelerometerJerkMeanX
    frequencyDomainBodyAccelerometerJerkMeanY
    frequencyDomainBodyAccelerometerJerkMeanZ
    
Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

    frequencyDomainBodyAccelerometerJerkStandardDeviationX
    frequencyDomainBodyAccelerometerJerkStandardDeviationY
    frequencyDomainBodyAccelerometerJerkStandardDeviationZ
    
Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

    frequencyDomainBodyAccelerometerJerkMeanFrequencyX
    frequencyDomainBodyAccelerometerJerkMeanFrequencyY
    frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
Average frequency-domain body angular velocity in the X, Y and Z directions:

    frequencyDomainBodyGyroscopeMeanX
    frequencyDomainBodyGyroscopeMeanY
    frequencyDomainBodyGyroscopeMeanZ
    
Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

    frequencyDomainBodyGyroscopeStandardDeviationX
    frequencyDomainBodyGyroscopeStandardDeviationY
    frequencyDomainBodyGyroscopeStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

    frequencyDomainBodyGyroscopeMeanFrequencyX
    frequencyDomainBodyGyroscopeMeanFrequencyY
    frequencyDomainBodyGyroscopeMeanFrequencyZ
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

    frequencyDomainBodyAccelerometerMagnitudeMean
    frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
    frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
    
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

    frequencyDomainBodyAccelerometerJerkMagnitudeMean
    frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
    frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
    
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

    frequencyDomainBodyGyroscopeMagnitudeMean
    frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
    frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
    
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

    frequencyDomainBodyGyroscopeJerkMagnitudeMean
    frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
    frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency
