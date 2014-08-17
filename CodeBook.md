Code Book of the tidy data set
==============================

This code book explains data found in the [tidy.txt file](tidy.txt).

# Data Set Information 

Original data were loaded from : [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This is the explaination with the data set :

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Code Book

## For each record it is provided:

* Suject : An identifier of the subject who carried out the experiment.
* Activity : Its activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* Time domain signals : the following data were captured at a constant rate of 50 Hz :
    * tBodyAcc-(mean|std)-[XYZ] : 6 columns for the mean and standard deviation of the body acceleration signal obtained by subtracting the gravity from the total acceleration. These data are absed on the 3-axial raw signals coming from the accelerometer. (in standard gravity units 'g').
    * tGravityAcc-(mean|std)-[XYZ] : 6 columns for the mean and standard deviation of the gravity acceleration signal. These data are absed on the 3-axial raw signals coming from the accelerometer. (in standard gravity units 'g').
    * tBodyAccJerk-(mean|std)-[XYZ] : 6 columns for the Jerk signals of the body acceleration derived in time. (in standard gravity units 'g').
    * tBodyGyro-(mean|std)-[XYZ] : 6 columns for the angular velocity. (in radians/second).
    * tBodyGyroJerk-(mean|std)-[XYZ] : 6 columns for the Jerk signal of the angular velocity derived in time. (in radians/second)
    * tBodyAccMag-(mean|std) : 2 columns for the magitude of the body acceleration, using the Euclidian norm. (in standard gravity units 'g').
    * tGravityAccMag-(mean|std) : 2 columns for the magnitude of the gravity acceleration using the Euclidian norm. (in standard gravity units 'g').
    * tBodyAccJerkMag-(mean|std) : 2 columns for the mangitude of the Jerk signal of the body acceleartion derived in time using the Euclidian norm. (in standard gravity units 'g').
    * tBodyGiroMag-(mean|std) : 2 columns for the magnitude of the angular velocity using Euclidian norm. (in radians/second).
    * tBodyGiroJerkMag-(mean|std) : 2 columns for the magnitude of the magnitude of the Jerk signal of the angular velocity derived in time using Euclidian norm. (in radians/second).
* Frequency domain signals : the following data were obtained by a Fast Fourier Transformation (FFT) :
    * fBodyAcc-(mean|std)-[XYZ] : 6 columns for the FTT of the body acceleration. (in standard gravity units 'g').
    * fGravityAcc-(mean|std)-[XYZ] : 6 columns for the FTT of the gravity acceleration. (in standard gravity units 'g').
    * fBodyAccJerk-(mean|std)-[XYZ] : 6 columns for the FTT of the Jerk signal of the body acceleration derived in time. (in standard gravity units 'g').
    * fBodyGyro-(mean|std)-[XYZ] : 6 columns for the FTT of the angular velocity. (in radians/second).
    * fBodyGyroJerk-(mean|std)-[XYZ] : 6 columns for the FTT of the Jerk signal of the angular velocity derived in time. (in radians/second).
    * fBodyAccMag-(mean|std) : 2 columns for the FTT of the magnitude of the body acceleration using Euclidian norm. (in standard gravity units 'g').
    * fBodyBodyAccJerkMag-(mean|std) : 2 columns for the FTT of the magnitude of the Jerk signal of the body acceleration derived in time using the Euclidian norm. (in standard gravity units 'g').
    * fBodyBodyGyroMag-(mean|std) : 2 columns for the FTT of the magnitude of the angular velocity using the Euclidian norm. (in radians/second).
    * fBodyBodyGyroJerkMag-(mean|std) : 2 columns for the FTT of the Jerk signal of magintude og the angular velocity derived in time using the Euclian norm. (in radians/second).

## Notes: 

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.