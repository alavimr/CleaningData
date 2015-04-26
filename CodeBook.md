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
    

**Variable Name and description**   
  
<dt>ID</dt>
<dd>Id assignment for each volunteer; factor type with 30 levels</dd>

<dt>ActivityLabel</dt>
<dd>factor of 6 levels; WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING</dd>

<dt>tBodyAccmeanX</dt>
<dd>t-domain body acceleration mean in X axis </dd>

<dt>tBodyAccmeanY</dt>
<dd>t-domain body acceleration mean in X axis</dd>   

<dt>tBodyAccmeanZ</dt>
<dd>t-domain body acceleration mean in Z axis</dd>

<dt>tBodyAccstdX</dt>
<dd>t-domain body acceleration std in X axis</dd>

<dt>tBodyAccstdY</dt>
<dd>t-domain body acceleration std in Y axis</dd>

<dt>tBodyAccstdZ</dt>
<dd>t-domain body acceleration std in Z axis</dd>

<dt>tGravityAccmeanX</dt>
<dd>t-domain gravity component of acceleration mean in X axis</dd>

<dt>tGravityAccmeanY</dt>
<dd>t-domain gravity component of acceleration mean in Y axis</dd>

<dt>tGravityAccmeanZ</dt>
<dd>t-domain gravity component of acceleration mean in Z axis</dd>

<dt>tGravityAccstdX</dt>
<dd>t-domain gravity component of acceleration std in X axis</dd>

<dt>tGravityAccstdY</dt>
<dd>t-domain gravity component of acceleration std in Y axis</dd>

<dt>tGravityAccstdZ</dt>
<dd>t-domain gravity component of acceleration std in Z axis</dd>

<dt>tBodyAccJerkmeanX</dt>
<dd>t-domain body acceleration jerk mean in X axis</dd>

<dt>tBodyAccJerkmeanY</dt>
<dd>t-domain body acceleration jerk mean in Y axis</dd>

<dt>tBodyAccJerkmeanZ</dt>
<dd>t-domain body acceleration jerk mean in Z axis</dd>

<dt>tBodyAccJerkstdX</dt>
<dd>t-domain body acceleration jerk std in X axis</dd>

<dt>tBodyAccJerkstdY</dt>
<dd>t-domain body acceleration jerk std in Y axis</dd>

<dt>tBodyAccJerkstdZ</dt>
<dd>t-domain body acceleration jerk std in Z axis</dd>

<dt>tBodyGyromeanX</dt>
<dd>t-domain body gyroscope mean in X axis</dd>

<dt>tBodyGyromeanY</dt>
<dd>t-domain body gyroscope mean in Y axis</dd>

<dt>tBodyGyromeanZ</dt>
<dd>t-domain body gyroscope mean in Z axis</dd>

<dt>tBodyGyrostdX</dt>
<dd>t-domain body gyroscope std in X axis</dd>

<dt>tBodyGyrostdY</dt>
<dd>t-domain body gyroscope std in Y axis</dd>

<dt>tBodyGyrostdZ</dt>
<dd>t-domain body gyroscope std in Z axis</dd>

<dt>tBodyGyroJerkmeanX</dt>
<dd>t-domain body gyroscope jerk mean in X axis</dd>

<dt>tBodyGyroJerkmeanY</dt>
<dd>t-domain body gyroscope jerk mean in Y axis</dd>

<dt>tBodyGyroJerkmeanZ</dt>
<dd>t-domain body gyroscope jerk mean in Z axis</dd>
 
<dt>tBodyGyroJerkstdX</dt>
<dd>t-domain body gyroscope jerk std in X axis</dd>   

<dt>tBodyGyroJerkstdY</dt>
<dd>t-domain body gyroscope jerk std in Y axis</dd>

<dt>tBodyGyroJerkstdZ</dt>
<dd>t-domain body gyroscope jerk std in Z axis</dd>

<dt>tBodyAccMagmean</dt>
<dd>t-domain body acceleration magnitude mean</dd>

<dt>tBodyAccMagstd</dt>
<dd>t-domain body acceleration magnitude std </dd>

<dt>tGravityAccMagmean</dt>
<dd>t-domain gravity component of acceleration magnitude mean</dd>

<dt>tGravityAccMagstd</dt>
<dd>t-domain gravity component of acceleration magnitude std</dd>

<dt>tBodyAccJerkMagmean</dt>
<dd>t-domain body acceleration jerk magnitude mean</dd>                       

<dt>tBodyAccJerkMagstd</dt>
<dd>t-domain body acceleration jerk magnitude std</dd>
  
<dt>tBodyGyroMagmean</dt>
<dd>t-domain body gyroscope magnitude mean</dd>

<dt>tBodyGyroMagstd</dt>
<dd>t-domain body gyroscope magnitude std</dd>

<dt>tBodyGyroJerkMagmean</dt>
<dd>t-domain body gyroscope jerk magnitude mean</dd>    

<dt>tBodyGyroJerkMagstd</dt>
<dd>t-domain body gyroscope jerk magnitude std</dd>

<dt>fBodyAccmeanX</dt>
<dd>f-domain body acceleration mean in X axis</dd>

<dt>fBodyAccmeanY</dt>
<dd>f-domain body acceleration mean in Y axis</dd>

<dt>fBodyAccmeanZ</dt>
<dd>f-domain body acceleration mean in Z axis</dd>

<dt>fBodyAccstdX</dt>
<dd>f-domain body acceleration std in X axis</dd>

<dt>fBodyAccstdY</dt>
<dd>f-domain body acceleration std in Y axis</dd>

<dt>fBodyAccstdZ</dt>
<dd>f-domain body acceleration std in Z axis</dd>

<dt>fBodyAccmeanFreqX</dt>
<dd>f-domain body acceleration mean frequency in X axis</dd> 

<dt>fBodyAccmeanFreqY</dt>
<dd>f-domain body acceleration mean frequency in Y axis</dd>

<dt>fBodyAccmeanFreqZ</dt>
<dd>f-domain body acceleration mean frequency in Z axis</dd>

<dt>fBodyAccJerkmeanX</dt>
<dd>f-domain body acceleration jerk mean in X axis</dd>

<dt>fBodyAccJerkmeanY</dt>
<dd>f-domain body acceleration jerk mean in Y axis</dd>

<dt>fBodyAccJerkmeanZ</dt>
<dd>f-domain body acceleration jerk mean in Z axis</dd>
   
<dt>fBodyAccJerkstdX</dt>
<dd>f-domain body acceleration jerk std in X axis</dd>

<dt>fBodyAccJerkstdY</dt>
<dd>f-domain body acceleration jerk std in Y axis</dd>

<dt>fBodyAccJerkstdZ</dt>
<dd>f-domain body acceleration jerk std in Z axis</dd>

<dt>fBodyAccJerkmeanFreqX</dt>
<dd>f-domain body acceleration jerk mean frequency in X axis</dd>

<dt>fBodyAccJerkmeanFreqY</dt>
<dd>f-domain body acceleration jerk mean frequency in Y axis</dd>

<dt>fBodyAccJerkmeanFreqZ</dt>
<dd>f-domain body acceleration jerk mean frequency in Z axis</dd>

<dt>fBodyGyromeanX</dt>
<dd>f-domain body gyroscope mean in X axis</dd>

<dt>fBodyGyromeanY</dt>
<dd>f-domain body gyroscope mean in Y axis</dd>

<dt>fBodyGyromeanZ</dt>
<dd>f-domain body gyroscope mean in Z axis</dd>

<dt>fBodyGyrostdX</dt>
<dd>f-domain body gyroscope std in X axis</dd>

<dt>fBodyGyrostdY</dt>
<dd>f-domain body gyroscope std in Y axis</dd>

<dt>fBodyGyrostdZ</dt>
<dd>f-domain body gyroscope std in Z axis</dd>

<dt>fBodyGyromeanFreqX</dt>
<dd>f-domain body gyroscope mean frequency in X axis</dd>

<dt>fBodyGyromeanFreqY</dt>
<dd>f-domain body gyroscope mean frequency in Y axis</dd>

<dt>fBodyGyromeanFreqZ</dt>
<dd>f-domain body gyroscope mean frequency in Z axis</dd>

<dt>fBodyAccMagmean</dt>
<dd>f-domain body acceleration magnitude mean</dd>

<dt>fBodyAccMagstd</dt>
<dd>f-domain body acceleration magnitude std</dd> 

<dt>fBodyAccMagmeanFreq</dt>
<dd>f-domain body acceleration magnitude mean frequency</dd>

<dt>fBodyBodyAccJerkMagmean</dt>
<dd>f-domain body body acceleration jerk magnitude mean</dd>

<dt>fBodyBodyAccJerkMagstd</dt>
<dd>f-domain body body acceleration jerk magnitude std</dd> 

<dt>fBodyBodyAccJerkMagmeanFreq</dt>
<dd>f-domain body body acceleration jerk magnitude mean frequency</dd>

<dt>fBodyBodyGyroMagmean</dt>
<dd>f-domain body body gyroscope magnitude mean</dd>

<dt>fBodyBodyGyroMagstd</dt>
<dd>f-domain body body gyroscope magnitude std</dd>

<dt>fBodyBodyGyroMagmeanFreq</dt>
<dd>f-domain body body gyroscope magnitude mean frequency</dd>

<dt>fBodyBodyGyroJerkMagmean</dt>
<dd>f-domain body body gyroscope jerk magnitude mean</dd>

<dt>fBodyBodyGyroJerkMagstd</dt>
<dd>f-domain body body gyroscope jerk magnitude std</dd>

<dt>fBodyBodyGyroJerkMagmeanFreq</dt>
<dd>f-domain body body gyroscope jerk magnitude mean frequency</dd> 

<dt>angletBodyAccMeangravity</dt>
<dd>angle between t-domain body acceleration mean and gravity</dd> 

<dt>angletBodyAccJerkMeangravityMean</dt>
<dd>angle between means of t-domain body acceleration jerk and gravity</dd> 

<dt>angletBodyGyroMeangravityMean</dt>
<dd>angle between means of t-domain body gyroscope and gravity</dd>    

<dt>angletBodyGyroJerkMeangravityMean</dt>
<dd>angle between means of t-domain body gyroscope jerk and gravity</dd>   

<dt>angleXgravityMean</dt>
<dd>angle between X axix and gravity mean</dd>

<dt>angleYgravityMean</dt>
<dd>angle between Y axix and gravity mean</dd>

<dt>angleZgravityMean</dt>
<dd>angle between Z axix and gravity mean</dd>




