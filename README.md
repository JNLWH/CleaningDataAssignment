


### This repo is a project submission from course Getting and Cleaning Data on Coursera.

Following the course instruction, these files can be found in this repo.

**1) run_analysis.R** contains the script covering 2 main parts:

1. transforming and combining *test* data with *train* data incl. descriptive activity
2. preparing the tidy *mean* dataset for each activity and each subject

Concise explanation per code block can be found in the script file. Here I'd like to mention a few bits and pieces I found interesting to work with this dataset.

I used the [Course Tutorial](https://github.com/lgreski/datasciencectacontent/blob/master/markdown/rprog-downloadingFiles.md) for zip file download and unzipping. It was very helpful.

Column 2 of the Features was the 561 variables. I chose to subset it and convert into a vector of characters. In this way, it was ready to be used to rename X column names in one line of code later on.

```R
features <- read.table('./UCI HAR Dataset/features.txt', header = FALSE)
featuresOnly <- features[,2]
featuresOnly <- as.character(featuresOnly)
```

After inspecting Subject and Y in *test* (because it was the smaller dataset), I realized Y was activity for each Subject. So I did the following to make life easier for myself:

I named Activity columns as "activityCode" and "activity".
I named Y column as "activityCode".
I named Subject column as "SubjectID". 

Below is the code example from *test* dataset:

```R
colnames(activity) <- c("activityCode", "activity")
colnames(testSub) <- c("subjectID")
colnames(testY) <- c("activityCode")
```

When subsetting mean and standard deviation columns in X, I realized if I use grep() I would have problem with meanFreq. So I decided to remove meanFreq first before I subset all the mean and std measurements.

Below is the code example from *test* dataset:

```R
testXrm <- testX[,-grep("meanFreq", names(testX))]
testXtrim <-testXrm[,grep("Mean|mean|std", names(testXrm))]
```

After combining prepared (I called them Trim) Subject, Y and X for respective *test* and *train* datasets, I rowbinded them and then joined with activity. Removed "activityCode", we got the cleaned dataset with descriptive activity.

```R
dataTrim <- merge(rbind(testTrim, trainTrim), activity, by ="activityCode")
data <- select(dataTrim, -activityCode)
```

Because I am quite new to comprehensive R courses, I chose to step-by-step clean data rather than working on functions and looping, for now. This means I ended up with a few redundant datasets. To keep the work environment tidy, I used rm() to remove redundant datasets throughout the script.

At last, I had the clean dataset to prepare the Average calculation. 

```R
average <-
        data %>%
        group_by(activity, subjectID) %>%
        summarize_all(funs(mean))
```

Before writing **_result file_** of measurement average into a csv file, the calculation column headers have all been updated into "avg-measureMean" or avg-measureStd" to clearly indicate the results. Then the **_result file_** was submitted on course site, not here in the repo, as instructed.


**2) CodeBook.md** gives the background of dataset, data source and variables produced by my run_analysis.R script.


**3) README.md** is the one you are reading now. Hope it's clear. I certainly enjoyed working with it. Thanks for reading and grading my project!








