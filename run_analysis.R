# We download and unzip the source file
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', 'data.zip', 'curl')
unzip('data.zip')

# We load train and test data
trainData <- read.table('UCI HAR Dataset/train/X_train.txt', header=FALSE, colClasses=c('numeric'))
testData <- read.table('UCI HAR Dataset/test/X_test.txt', header=FALSE, colClasses=c('numeric'))

# We merge these dataset together
data <- rbind(trainData, testData)

# We read features table
features <- read.table('UCI HAR Dataset/features.txt', header=FALSE)

# We only take mean() and std() columns
columnsToKeep <- grep("(mean|std)\\(\\)", features$V2)
data <- data[,columnsToKeep]

# We label the data with the help of the feature table
names(data) <- features[columnsToKeep,"V2"]

# We load the activity data
trainDataY <- read.table('UCI HAR Dataset/train/y_train.txt', header=FALSE, colClasses=c('integer'))
testDataY <- read.table('UCI HAR Dataset/test/y_test.txt', header=FALSE, colClasses=c('integer'))
dataY <- rbind(trainDataY, testDataY)
names(dataY) <- c("Activity")

# We load the activities names and transform the activity data
activityNames <- read.table('UCI HAR Dataset/activity_labels.txt', header=FALSE)
dataY$Activity <- factor(dataY$Activity, labels=activityNames$V2)

# We add the activity to the data
data <- cbind(dataY, data)

# We load the subject data
trainDataSubject <- read.table('UCI HAR Dataset/train/subject_train.txt', header=FALSE, colClasses=c('integer'))
testDataSubject <- read.table('UCI HAR Dataset/test/subject_test.txt', header=FALSE, colClasses=c('integer'))
dataSubject <- rbind(trainDataSubject, testDataSubject)
names(dataSubject) <- c("Subject")

# We add the activity to the data
data <- cbind(dataSubject, data)

# We save this dataset
write.table(data, 'tidy.txt', row.name=FALSE)
