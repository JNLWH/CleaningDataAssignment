## About result tables from script "run_analysis.R"

### Project

This project is part of the course assignment from Data Science Specialization Course 3 Getting and Cleaning Data. Its purpose is to demonstrate one's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

### Source Data

The data sourced for this project is from the area of Wearable Computing, more specifically Human Activity Recognition Using Smartphones Data Set. It's collected from the accelerometers from the Samsung Galaxy S smartphone. A full description and datasets used in this project is available at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

### Result Tables

There are 2 (tidy) result tables from this assignment:

1. data
2. average

Both tables have 75 columns where *data* table has more granular observation data and *average* table contains average for each measurement in *data* table grouped by activity and subject.

An overview of the tables are as following:

table | column 1 | column 2 | column 3 to 75 | number of observations
----- | -------- | -------- | -------------- | ----------------------
data | activity | subjectID | 73 variables of selected feature vectors from time and frequency domain signals | 10299 obs.
average | activity | subjectID | average of the above 73 measurements grouped by activity per subject | 180 obs.

### Further info

#### activity

Has 6 unique values:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING


#### SubjectID

Each subjectID represents 1 device or 1 person who carries this device. There are in total 30 subjects. 


#### 73 selected feature vectors & their averages

To best explain what features are collected and how, below is some concise info from the dataset origin.

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable.

The course assignment instruction required to select ``mean()`` and ``std()`` variables for the above signals. For a complete list of variables in addition to shown here, please check ``features_info.txt`` file from the  [original data source](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Below are all the complete list of 73 feature vectors included in **data table**.

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y                   
- tBodyAcc-mean()-Z                    
- tBodyAcc-std()-X                    
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z                    
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y                
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X                 
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z                 
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y               
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X                
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z                
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y                  
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X                   
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z                   
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y              
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X               
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z               
- tBodyAccMag-mean()
- tBodyAccMag-std()                   
- tGravityAccMag-mean()
- tGravityAccMag-std()                
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()               
- tBodyGyroMag-mean()tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()              
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y 
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X  
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z  
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y               
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X                
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z                
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X 
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z 
- fBodyAccMag-mean()
- fBodyAccMag-std() 
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()           
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()              
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()          
- angle(tBodyAccMean,gravity)
- angle(tBodyAccJerkMean),gravityMean)
- angle(tBodyGyroMean,gravityMean)
- angle(tBodyGyroJerkMean,gravityMean)
- angle(X,gravityMean)
- angle(Y,gravityMean)                
- angle(Z,gravityMean)              

In **average table**, all the above 73 variables' averages are calculated per activity and per subject. A complete list of 73 average variables is as following:

- avg-tBodyAcc-mean()-X
- avg-tBodyAcc-mean()-Y                   
- avg-tBodyAcc-mean()-Z                    
- avg-tBodyAcc-std()-X                    
- avg-tBodyAcc-std()-Y
- avg-tBodyAcc-std()-Z                    
- avg-tGravityAcc-mean()-X
- avg-tGravityAcc-mean()-Y                
- avg-tGravityAcc-mean()-Z
- avg-tGravityAcc-std()-X                 
- avg-tGravityAcc-std()-Y
- avg-tGravityAcc-std()-Z                 
- avg-tBodyAccJerk-mean()-X
- avg-tBodyAccJerk-mean()-Y               
- avg-tBodyAccJerk-mean()-Z
- avg-tBodyAccJerk-std()-X                
- avg-tBodyAccJerk-std()-Y
- avg-tBodyAccJerk-std()-Z                
- avg-tBodyGyro-mean()-X
- avg-tBodyGyro-mean()-Y                  
- avg-tBodyGyro-mean()-Z
- avg-tBodyGyro-std()-X                   
- avg-tBodyGyro-std()-Y
- avg-tBodyGyro-std()-Z                   
- avg-tBodyGyroJerk-mean()-X
- avg-tBodyGyroJerk-mean()-Y              
- avg-tBodyGyroJerk-mean()-Z
- avg-tBodyGyroJerk-std()-X               
- avg-tBodyGyroJerk-std()-Y
- avg-tBodyGyroJerk-std()-Z               
- avg-tBodyAccMag-mean()
- avg-tBodyAccMag-std()                   
- avg-tGravityAccMag-mean()
- avg-tGravityAccMag-std()                
- avg-tBodyAccJerkMag-mean()
- avg-tBodyAccJerkMag-std()               
- avg-tBodyGyroMag-mean()tBodyGyroMag-std()
- avg-tBodyGyroJerkMag-mean()
- avg-tBodyGyroJerkMag-std()              
- avg-fBodyAcc-mean()-X
- avg-fBodyAcc-mean()-Y 
- avg-fBodyAcc-mean()-Z
- avg-fBodyAcc-std()-X  
- avg-fBodyAcc-std()-Y
- avg-fBodyAcc-std()-Z  
- avg-fBodyAccJerk-mean()-X
- avg-fBodyAccJerk-mean()-Y               
- avg-fBodyAccJerk-mean()-Z
- avg-fBodyAccJerk-std()-X                
- avg-fBodyAccJerk-std()-Y
- avg-fBodyAccJerk-std()-Z                
- avg-fBodyGyro-mean()-X
- avg-fBodyGyro-mean()-Y
- avg-fBodyGyro-mean()-Z
- avg-fBodyGyro-std()-X 
- avg-fBodyGyro-std()-Y
- avg-fBodyGyro-std()-Z 
- avg-fBodyAccMag-mean()
- avg-fBodyAccMag-std() 
- avg-fBodyBodyAccJerkMag-mean()
- avg-fBodyBodyAccJerkMag-std()           
- avg-fBodyBodyGyroMag-mean()
- avg-fBodyBodyGyroMag-std()              
- avg-fBodyBodyGyroJerkMag-mean()
- avg-fBodyBodyGyroJerkMag-std()          
- avg-angle(tBodyAccMean,gravity)
- avg-angle(tBodyAccJerkMean),gravityMean)
- avg-angle(tBodyGyroMean,gravityMean)
- avg-angle(tBodyGyroJerkMean,gravityMean)
- avg-angle(X,gravityMean)
- avg-angle(Y,gravityMean)                
- avg-angle(Z,gravityMean) 

