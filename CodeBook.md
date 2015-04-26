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
    

col| Variable Name | Variable | Values or explanation   
--| ------------- | -------- | ---------------------   
1 |ID             | Id assignment for each volunteer | factor type with 30 levels
2 |ActivityLabel  | name of each activity |factor of 6 levels: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
3 |tBodyAccmeanX  | t-domain body acceleration mean in X axis| range: 0.2215982,  0.301461  
4 |tBodyAccmeanY  | t-domain body acceleration mean in Y axis| range: -0.04051395, -0.001308288 
5 |tBodyAccmeanZ  | t-domain body acceleration mean in Z axis| range: -0.1525139, -0.07537847
6 |tBodyAccstdX   | t-domain body acceleration std in X axis | range: -0.9960686,  0.6269171
7 |tBodyAccstdY   | t-domain body acceleration std in Y axis | range: -0.9902409,  0.6169370
8 |tBodyAccstdZ   | t-domain body acceleration std in Z axis | range: -0.9876587,  0.6090179
9 |tGravityAccmeanX|t-domain gravity component of acceleration mean in X axis|range: -0.6800432, 0.9745087 
10|tGravityAccmeanY|t-domain gravity component of acceleration mean in Y axis|range: -0.4798948, 0.9565938 
11|tGravityAccmeanZ|t-domain gravity component of acceleration mean in Z axis|range: -0.4950887, 0.9578730 
12|tGravityAccstdX|t-domain gravity component of acceleration std in X axis|range: -0.9967642, -0.8295549
13|tGravityAccstdY|t-domain gravity component of acceleration std in Y axis|range: -0.9942476, -0.6435784
14|tGravityAccstdZ|t-domain gravity component of acceleration std in Z axis|range: -0.9909572, -0.6101612
15|tBodyAccJerkmeanX|t-domain body acceleration jerk mean in X axis|range: 0.0426881, 0.1301930
16|tBodyAccJerkmeanY|t-domain body acceleration jerk mean in Y axis|range: -0.03868721,  0.05681859
17|tBodyAccJerkmeanZ|t-domain body acceleration jerk mean in Z axis|range: -0.06745839,  0.03805336
18|tBodyAccJerkstdX|t-domain body acceleration jerk std in X axis|range: -0.9946045,  0.5442730
19|tBodyAccJerkstdY|t-domain body acceleration jerk std in Y axis|range: -0.9895136,  0.3553067
20|tBodyAccJerkstdZ|t-domain body acceleration jerk std in Z axis|range: -0.99328831,  0.03101571
21|tBodyGyromeanX|t-domain body gyroscope mean in X axis|range: -0.2057754,  0.1927045
22|tBodyGyromeanY|t-domain body gyroscope mean in Y axis|range: -0.20420536,  0.02747076
23|tBodyGyromeanZ|t-domain body gyroscope mean in Z axis|range: -0.0724546,  0.1791021
24|tBodyGyrostdX|t-domain body gyroscope std in X axis|range: -0.9942766,  0.2676572
25|tBodyGyrostdY|t-domain body gyroscope std in Y axis|range: -0.9942105,  0.4765187
26|tBodyGyrostdZ|t-domain body gyroscope std in Z axis|range: -0.9855384  0.5648758
27|tBodyGyroJerkmeanX|t-domain body gyroscope jerk mean in X axis|range: -0.15721254, -0.02209163
28|tBodyGyroJerkmeanY|t-domain body gyroscope jerk mean in Y axis|range: -0.07680899, -0.01320228
29|tBodyGyroJerkmeanZ|t-domain body gyroscope jerk mean in Z axis|range: -0.092499853, -0.006940664
30|tBodyGyroJerkstdX|t-domain body gyroscope jerk std in X axis|range: -0.9965425,  0.1791486
31|tBodyGyroJerkstdY|t-domain body gyroscope jerk std in Y axis|range: -0.9970816,  0.2959459
32|tBodyGyroJerkstdZ|t-domain body gyroscope jerk std in Z axis|range: -0.9953808,  0.1932065
33|tBodyAccMagmean|t-domain body acceleration magnitude mean|range: -0.9864932,  0.6446043 
34|tBodyAccMagstd|t-domain body acceleration magnitude std|range: -0.9864645,  0.4284059
35|tGravityAccMagmean|t-domain gravity component of acceleration magnitude mean|range: -0.9864932,  0.6446043 
36|tGravityAccMagstd|t-domain gravity component of acceleration magnitude std|range: -0.9864645,  0.4284059                    
37|tBodyAccJerkMagmean|t-domain body acceleration jerk magnitude mean|range: -0.9928147,  0.4344904
38|tBodyAccJerkMagstd|t-domain body acceleration jerk magnitude std|range: -0.9946469,  0.4506121
39|tBodyGyroMagmean|t-domain body gyroscope magnitude mean|range: -0.9807408,  0.4180046
40|tBodyGyroMagstd|t-domain body gyroscope magnitude std|range: -0.9813727,  0.2999760 
41|tBodyGyroJerkMagmean|t-domain body gyroscope jerk magnitude mean|range: -0.99732253,  0.08758166 
42|tBodyGyroJerkMagstd|t-domain body gyroscope jerk magnitude std|range: -0.9976661,  0.2501732
43|fBodyAccmeanX  | f-domain body acceleration mean in X axis| range: -0.9952499,  0.5370120  
44|fBodyAccmeanY  | f-domain body acceleration mean in Y axis| range: -0.9890343,  0.5241877 
45|fBodyAccmeanZ  | f-domain body acceleration mean in Z axis| range: -0.9894739,  0.2807360
46|fBodyAccstdX   | f-domain body acceleration std in X axis | range: -0.9966046,  0.6585065
47|fBodyAccstdY   | f-domain body acceleration std in Y axis | range: -0.9906804,  0.5601913
48|fBodyAccstdZ   | f-domain body acceleration std in Z axis | range: -0.9872248,  0.6871242
49|fBodyAccmeanFreqX|f-domain body acceleration mean frequency in X axis|range: -0.6359130,  0.1591236
50|fBodyAccmeanFreqY|f-domain body acceleration mean frequency in Y axis|range: -0.3795185,  0.4665282
51|fBodyAccmeanFreqZ|f-domain body acceleration mean frequency in Z axis|range: -0.5201148,  0.4025326
52|fBodyAccJerkmeanX|f-domain body acceleration jerk mean in X axis|range: -0.9946308,  0.4743173
53|fBodyAccJerkmeanY|f-domain acceleration jerk mean in Y axis|range: -0.9893988,  0.2767169
54|fBodyAccJerkmeanZ|f-domain body acceleration jerk mean in Z axis|range: -0.9920184,  0.1577757
55|fBodyAccJerkstdX|f-domain body acceleration jerk std in X axis|range: -0.9950738,  0.4768039
56|fBodyAccJerkstdY|f-domain body acceleration jerk std in Y axis|range: -0.9904681,  0.3497713
57|fBodyAccJerkstdZ|f-domain body acceleration jerk std in Z axis|range: -0.993107760, -0.006236475
58|fBodyAccJerkmeanFreqX|f-domain body acceleration jerk mean frequency in X axis|range: -0.5760440,  0.3314493
59|fBodyAccJerkmeanFreqY|f-domain body acceleration jerk mean frequency in Y axis|range: -0.6019714,  0.1956773
60|fBodyAccJerkmeanFreqZ|f-domain body acceleration jerk mean frequency in Z axis|range: -0.6275555,  0.2301079
61|fBodyGyromeanX|f-domain body gyroscope mean in X axis|range: -0.9931226,  0.4749624
62|fBodyGyromeanY|f-domain body gyroscope mean in Y axis|range: -0.9940255,  0.3288170
63|fBodyGyromeanZ|f-domain body gyroscope mean in Z axis|range: -0.9859578,  0.4924144
64|fBodyGyrostdX|f-domain body gyroscope std in X axis|range: -0.9946522,  0.1966133
65|fBodyGyrostdY|f-domain body gyroscope std in Y axis|range: -0.9943531,  0.6462336
66|fBodyGyrostdZ|f-domain body gyroscope std in Z axis|range: -0.9867253,  0.5224542
67|fBodyGyromeanFreqX|f-domain body gyroscope mean frequency in X axis|range: -0.3957702,  0.2492094
68|fBodyGyromeanFreqY|f-domain body gyroscope mean frequency in Y axis|range: -0.6668148,  0.2731413
69|fBodyGyromeanFreqZ|f-domain body gyroscope mean frequency in Z axis|range: -0.5074909,  0.3770741
70|fBodyAccMagmean|f-domain body acceleration magnitude mean|range: -0.9868006,  0.5866376 
71|fBodyAccMagstd|f-domain body acceleration magnitude std|range: -0.9876485,  0.1786846
72|fBodyAccMagmeanFreq|f-domain body acceleration magnitude mean frequency|range: -0.3123380,  0.4358469 
73|fBodyBodyAccJerkMagmean|f-domain body body acceleration jerk magnitude mean|range: -0.9939983,  0.5384048
74|fBodyBodyAccJerkMagstd|f-domain body body acceleration jerk magnitude std|range: -0.9943667,  0.3163464
75|fBodyBodyAccJerkMagmeanFreq|f-domain body body acceleration jerk magnitude mean frequency|range: -0.1252104,  0.4880885
76|fBodyBodyGyroMagmean|f-domain body body gyroscope magnitude mean|range: -0.9865352,  0.2039798
77|fBodyBodyGyroMagstd|f-domain body body gyroscope magnitude std|range: -0.9814688,  0.2366597
78|fBodyBodyGyroMagmeanFreq|f-domain body body gyroscope magnitude mean frequency|range: -0.4566387,  0.4095216
79|fBodyBodyGyroJerkMagmean|f-domain body body gyroscope jerk magnitude mean|range: -0.9976174,  0.1466186
80|fBodyBodyGyroJerkMagstd|f-domain body body gyroscope jerk magnitude std|range: -0.9975852,  0.2878346
81|fBodyBodyGyroJerkMagmeanFreq|f-domain body body gyroscope jerk magnitude mean frequency|range: -0.1829236,  0.4263017
82|angletBodyAccMeangravity|angle between t-domain body acceleration mean and gravity|range: -0.1630426,  0.1291540 
83|angletBodyAccJerkMeangravityMean|angle between means of t-domain body acceleration jerk and gravity|range: -0.120554,  0.203260
84|angletBodyGyroMeangravityMean|angle between means of t-domain body gyroscope and gravity|range: -0.3893051,  0.4441012
85|angletBodyGyroJerkMeangravityMean|angle between means of t-domain body gyroscope jerk and gravity|range: -0.2236721,  0.1823848
86|angleXgravityMean|angle between X axix and gravity mean|range: -0.9471165,  0.7377844      
87|angleYgravityMean|angle between Y axix and gravity mean|range: -0.8745677,  0.4247612
88|angleZgravityMean|angle between Z axix and gravity mean|range: -0.8736494,  0.3904444



