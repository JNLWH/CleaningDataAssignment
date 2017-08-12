### part 1 - transform & combine test data with train data incl. descriptive activity ###

# create new R project and download needed libraries

library(dplyr)
library(data.table)

# download zip folder

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,
              destfile='run.zip',
              method="curl", # for OSX / Linux 
              mode="wb") # "wb" means "write binary," and is used for binary files
unzip(zipfile = "run.zip") # unpack the files into subdirectories 

# read Features and Activity. convert features into Character vector for X column name.
# read Activity. name columns with suitable name to join with X later.

features <- read.table('./UCI HAR Dataset/features.txt', header = FALSE)
featuresOnly <- features[,2]
featuresOnly <- as.character(featuresOnly)

activity <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
colnames(activity) <- c("activityCode", "activity")

# read Subject, X and Y from test dataset
# name relevant columns with label *subjectID*, *activityCode* and 
# features as variable names (into X)

testSub <- read.table('./UCI HAR Dataset/test/subject_test.txt', header = FALSE) 
testY <- read.table('./UCI HAR Dataset/test/y_test.txt', header = FALSE) 
testX <- read.table('./UCI HAR Dataset/test/X_test.txt', header = FALSE)

colnames(testSub) <- c("subjectID")
colnames(testY) <- c("activityCode")
colnames(testX) <- featuresOnly

# subset "mean" & standard deviation "std"

testXrm <- testX[,-grep("meanFreq", names(testX))]
testXtrim <-testXrm[,grep("Mean|mean|std", names(testXrm))]

# column bind Subject, Y and Xtrim to create test data including subjectID and activityCode

testTrim <- cbind(testSub,testY, testXtrim)

# same process applied to train dataset

trainSub <- read.table('./UCI HAR Dataset/train/subject_train.txt', header = FALSE)
trainY <- read.table('./UCI HAR Dataset/train/y_train.txt', header = FALSE)
trainX <- read.table('./UCI HAR Dataset/train/X_train.txt', header = FALSE)

colnames(trainSub) <- c("subjectID")
colnames(trainY) <- c("activityCode")
colnames(trainX) <- featuresOnly

trainXrm <- trainX[,-grep("meanFreq", names(trainX))]
trainXtrim <-trainXrm[,grep("Mean|mean|std", names(trainXrm))]

trainTrim <- cbind(trainSub,trainY, trainXtrim)

# remove redundant datasets.

rm(testSub,testX,testXrm,testXtrim,testY)
rm(trainSub,trainX,trainXrm,trainXtrim, trainY)

# combine test and train data by row to form dataTrim
# join dataTrim with Activity to get activity description. remove activity code afterwards.

dataTrim <- merge(rbind(testTrim, trainTrim), activity, by ="activityCode")
data <- select(dataTrim, -activityCode)

# remove redundant datasets.

rm(testTrim, trainTrim, dataTrim)

### part 2 - prepare the tidy mean dataset for each activity and each subject ###

average <-
        data %>%
        group_by(activity, subjectID) %>%
        summarize_all(funs(mean))

# tidy Average data is exported as csv for further analysis.
write.csv(average, file = "average.csv")

