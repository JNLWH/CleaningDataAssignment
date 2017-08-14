
##About run_analysis.R in Cleaning Data Assignment R Project

###Project

This project is part of the course assignment from Data Science Specialization Course 3 Getting and Cleaning Data. Its purpose is to demonstrate one's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

###Source Data

The data sourced for this project belongs to the area of Wearable Computing, more specifically Human Activity Recognition Using Smartphones Data Set. It's collected from the accelerometers from the Samsung Galaxy S smartphone. A full description and datasets used in this project is available at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

###Result Tables

There are 2 result (tidy) tables from this project:
1. data
2. average

Both tables have 75 columns, where of 2 
mean(): Mean value
std(): Standard deviation

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

angle(X,gravityMean)                 
angle(Y,gravityMean)            
angle(Z,gravityMean)
angle(tBodyAccMean,gravity)         
angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean)
           


[3] "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
 [5] "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                    
 [7] "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                    
 [9] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                
[11] "tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"                 
[13] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
[15] "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"               
[17] "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                
[19] "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                
[21] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                  
[23] "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
[25] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
[27] "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"              
[29] "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"               
[31] "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"               
[33] "tBodyAccMag-mean()"                   "tBodyAccMag-std()"                   
[35] "tGravityAccMag-mean()"                "tGravityAccMag-std()"                
[37] "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"               
[39] "tBodyGyroMag-mean()"                  "tBodyGyroMag-std()"                  
[41] "tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"              
[43] "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                   
[45] "fBodyAcc-mean()-Z"                    "fBodyAcc-std()-X"                    
[47] "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                    
[49] "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"               
[51] "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-std()-X"                
[53] "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                
[55] "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                  
[57] "fBodyGyro-mean()-Z"                   "fBodyGyro-std()-X"                   
[59] "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                   
[61] "fBodyAccMag-mean()"                   "fBodyAccMag-std()"                   
[63] "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-std()"           
[65] "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-std()"              
[67] "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-std()"          
[69] "angle(tBodyAccMean,gravity)"          "angle(tBodyAccJerkMean),gravityMean)"
[71] "angle(tBodyGyroMean,gravityMean)"     "angle(tBodyGyroJerkMean,gravityMean)"
[73] "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[75] "angle(Z,gravityMean)"              


