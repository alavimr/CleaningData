---
title: "CodeBook.md"
output: html_document
---
## Data from Human Activity Recognition        

### Summary
The data in this experiment were derived from thirty volunteers within an age bracket of 19-48 years who were asked to carry out six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on the waist. Phones embedded accelerometer and gyroscope were used to record 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The raw 3-axial signals from accelerometer and gyroscope were recorded in windows of 2.56 sec with 50% overlap with each window consisting of 128 recordings. The sensor acceleration signal, which has gravitational and body motion components, was separated into body acceleration and gravity. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. Time domain data (prefix 't' to denote time domain signals) were derived from raw sensor signals. Some of time domain data were subjected to Fast Fourier Transformation to derive frequency domain data (prefix 'f' to denote frequency domain signals). 

### Features 
"t" and "f" stand for "time" and "frequency".  
"mean frequency" is the Weighted average of the frequency components.  
Magnitude of three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).  
Values in the "tidyData" table are averge of each variable for each subject for each activity
    

**Variable Name**                           **Variable**   
  
ID                                          Id assignment for each volunteer; factor type with 30 levels  
ActivityLabel                               name of each activity; factor of 6 levels: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING  
tBodyAccmeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration mean in X axis    
tBodyAccmeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration mean in Y axis   
tBodyAccmeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration mean in Z axis  
tBodyAccstdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration std in X axis   
tBodyAccstdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration std in Y axis   
tBodyAccstdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration std in Z axis   
tGravityAccmeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain gravity component of acceleration mean in X axis   
tGravityAccmeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain gravity component of acceleration mean in Y axis  
tGravityAccmeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain gravity component of acceleration mean in Z axis   
tGravityAccstdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain gravity component of acceleration std in X axis    
tGravityAccstdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain gravity component of acceleration std in Y axis  
tGravityAccstdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain gravity component of acceleration std in Z axis  
tBodyAccJerkmeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk mean in X axis  
tBodyAccJerkmeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk mean in Y axis  
tBodyAccJerkmeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk mean in Z axis  
tBodyAccJerkstdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk std in X axis  
tBodyAccJerkstdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk std in Y axis  
tBodyAccJerkstdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk std in Z axis  
tBodyGyromeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope mean in X axis  
tBodyGyromeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope mean in Y axis  
tBodyGyromeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope mean in Z axis  
tBodyGyrostdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope std in X axis  
tBodyGyrostdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope std in Y axis  
tBodyGyrostdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope std in Z axis  
tBodyGyroJerkmeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk mean in X axis  
tBodyGyroJerkmeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk mean in Y axis  
tBodyGyroJerkmeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk mean in Z axis    
tBodyGyroJerkstdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk std in X axis    
tBodyGyroJerkstdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk std in Y axis  
tBodyGyroJerkstdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk std in Z axis  
tBodyAccMagmean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration magnitude mean   
tBodyAccMagstd \ \ \ \ \ \ \ \ \ \ \ \ \  \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration magnitude std  
tGravityAccMagmean \ \ \ \ \ \ \ \ \ \ \ \ \ \  \ \ \ t-domain gravity component of acceleration magnitude mean   
tGravityAccMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain gravity component of acceleration magnitude std                       
tBodyAccJerkMagmean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk magnitude mean  
tBodyAccJerkMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body acceleration jerk magnitude std  
tBodyGyroMagmean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope magnitude mean  
tBodyGyroMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope magnitude std   
tBodyGyroJerkMagmean \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk magnitude mean  
tBodyGyroJerkMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t-domain body gyroscope jerk magnitude std  
fBodyAccmeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration mean in X axis      
fBodyAccmeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration mean in Y axis    
fBodyAccmeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration mean in Z axis  
fBodyAccstdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration std in X axis    
fBodyAccstdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration std in Y axis  
fBodyAccstdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration std in Z axis  
fBodyAccmeanFreqX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration mean frequency in X axis    
fBodyAccmeanFreqY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration mean frequency in Y axis  
fBodyAccmeanFreqZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration mean frequency in Z axis  
fBodyAccJerkmeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk mean in X axis  
fBodyAccJerkmeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain acceleration jerk mean in Y axis  
fBodyAccJerkmeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk mean in Z axis  
fBodyAccJerkstdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk std in X axis  
fBodyAccJerkstdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk std in Y axis  
fBodyAccJerkstdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk std in Z axis  
fBodyAccJerkmeanFreqX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk mean frequency in X axis    
fBodyAccJerkmeanFreqY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk mean frequency in Y axis  
fBodyAccJerkmeanFreqZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration jerk mean frequency in Z axis  
fBodyGyromeanX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope mean in X axis  
fBodyGyromeanY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope mean in Y axis  
fBodyGyromeanZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope mean in Z axis  
fBodyGyrostdX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope std in X axis  
fBodyGyrostdY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope std in Y axis  
fBodyGyrostdZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope std in Z axis  
fBodyGyromeanFreqX \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope mean frequency in X axis    
fBodyGyromeanFreqY \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope mean frequency in Y axis  
fBodyGyromeanFreqZ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body gyroscope mean frequency in Z axis  
fBodyAccMagmean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration magnitude mean  
fBodyAccMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration magnitude std  
fBodyAccMagmeanFreq \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body acceleration magnitude mean frequency  
fBodyBodyAccJerkMagmean \ \ \ \ \ \ \ \ \ \ \ \ f-domain body body acceleration jerk magnitude mean  
fBodyBodyAccJerkMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body body acceleration jerk magnitude std  
fBodyBodyAccJerkMagmeanFreq \ \ \ \ \ \ f-domain body body acceleration jerk magnitude mean frequency  
fBodyBodyGyroMagmean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body body gyroscope magnitude mean  
fBodyBodyGyroMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body body gyroscope magnitude std  
fBodyBodyGyroMagmeanFreq \ \ \ \ \ \ \ \ \ \ \ f-domain body body gyroscope magnitude mean frequency  
fBodyBodyGyroJerkMagmean \ \ \ \ \ \ \ \ \ \ \ f-domain body body gyroscope jerk magnitude mean  
fBodyBodyGyroJerkMagstd \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f-domain body body gyroscope jerk magnitude std  
fBodyBodyGyroJerkMagmeanFreq \ \ \ \ \ f-domain body body gyroscope jerk magnitude mean frequency  
angletBodyAccMeangravity \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ angle between t-domain body acceleration mean and gravity   
angletBodyAccJerkMeangravityMean \ angle between means of t-domain body acceleration jerk and gravity  
angletBodyGyroMeangravityMean \ \ \ \ \ angle between means of t-domain body gyroscope and gravity  
angletBodyGyroJerkMeangravityMean angle between means of t-domain body gyroscope jerk and gravity  
angleXgravityMean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ angle between X axix and gravity mean        
angleYgravityMean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ angle between Y axix and gravity mean  
angleZgravityMean \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ angle between Z axix and gravity mean  



