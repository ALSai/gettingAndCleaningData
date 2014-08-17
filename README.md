Getting and Cleaning Data Assessments
=====================================

In this assessment, we load, clean and prepare data.

The script [run_analysis.R](run_analysis.R) performs the preparation and cleaning of the data :

* It downloads data from the [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and loaded them using this [code book](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
* It merges the training and the test sets to create one data set.
* It extracts only the measurements on the mean and standard deviation for each measurement.
* It appropriately labels the data set with descriptive variable names.
* It reads activities and merge them into the data set.
* It uses descriptive activity names to name the activities in the data set.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject : [tidy.txt](tidy.txt).

In order to run the preparation of the data, just launch the [run_analysis.R script](run_analysis.R) with the following command : `r run_analysis.R`.


The code book for this [tidy data set](tidy.txt) can be found in the [CodeBook.md file](CodeBook.md).