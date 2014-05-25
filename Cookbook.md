Cookbook for tidy set
=====================
This set represents transformed data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data set represents average for every measurement (all measurement of Mean and Std deviation) avaliable from the dataset. The average was taken for each subject and for each activity.

Naming convention:
* each variable that was averaged starts with avg
* each variable was pushed to R naming convetion (removed `-`, `(`, `)`, `,`)

Naming convention follow information in `feature_info.txt`

## Feature Selection (source: feature_info.txt)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ 
and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
 Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner freque
ncy of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity accel
eration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner freq
uency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tB
odyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated us
ing the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJer
k-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency doma
in signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.




# List of variables
1. subject - subject identifier for each window sample. Its range is from 1 to 30. 
2. nameOfActivity - name of activity performed
3. posOfActivity - id of activity performed
4. avgTBodyAccMeanX
5. avgTBodyAccMeanY
6. avgTBodyAccMeanZ
7. avgTBodyAccStdX
8. avgTBodyAccStdY
9. avgTBodyAccStdZ
10. avgTGravityAccMeanX
11. avgTGravityAccMeanY
12. avgTGravityAccMeanZ
13. avgTGravityAccStdX
14. avgTGravityAccStdY
15. avgTGravityAccStdZ
16. avgTBodyAccJerkMeanX
17. avgTBodyAccJerkMeanY
18. avgTBodyAccJerkMeanZ
19. avgTBodyAccJerkStdX
20. avgTBodyAccJerkStdY
21. avgTBodyAccJerkStdZ
22. avgTBodyGyroMeanX
23. avgTBodyGyroMeanY
24. avgTBodyGyroMeanZ
25. avgTBodyGyroStdX
26. avgTBodyGyroStdY
27. avgTBodyGyroStdZ
28. avgTBodyGyroJerkMeanX
29. avgTBodyGyroJerkMeanY
30. avgTBodyGyroJerkMeanZ
31. avgTBodyGyroJerkStdX
32. avgTBodyGyroJerkStdY
33. avgTBodyGyroJerkStdZ
34. avgTBodyAccMagMean
35. avgTBodyAccMagStd
36. avgTGravityAccMagMean
37. avgTGravityAccMagStd
38. avgTBodyAccJerkMagMean
39. avgTBodyAccJerkMagStd
40. avgTBodyGyroMagMean
41. avgTBodyGyroMagStd
42. avgTBodyGyroJerkMagMean
43. avgTBodyGyroJerkMagStd
44. avgFBodyAccMeanX
45. avgFBodyAccMeanY
46. avgFBodyAccMeanZ
47. avgFBodyAccStdX
48. avgFBodyAccStdY
49. avgFBodyAccStdZ
50. avgFBodyAccMeanFreqX
51. avgFBodyAccMeanFreqY
52. avgFBodyAccMeanFreqZ
53. avgFBodyAccJerkMeanX
54. avgFBodyAccJerkMeanY
55. avgFBodyAccJerkMeanZ
56. avgFBodyAccJerkStdX
57. avgFBodyAccJerkStdY
58. avgFBodyAccJerkStdZ
59. avgFBodyAccJerkMeanFreqX
60. avgFBodyAccJerkMeanFreqY
61. avgFBodyAccJerkMeanFreqZ
62. avgFBodyGyroMeanX
63. avgFBodyGyroMeanY
64. avgFBodyGyroMeanZ
65. avgFBodyGyroStdX
66. avgFBodyGyroStdY
67. avgFBodyGyroStdZ
68. avgFBodyGyroMeanFreqX
69. avgFBodyGyroMeanFreqY
70. avgFBodyGyroMeanFreqZ
71. avgFBodyAccMagMean
72. avgFBodyAccMagStd
73. avgFBodyAccMagMeanFreq
74. avgFBodyBodyAccJerkMagMean
75. avgFBodyBodyAccJerkMagStd
76. avgFBodyBodyAccJerkMagMeanFreq
77. avgFBodyBodyGyroMagMean
78. avgFBodyBodyGyroMagStd
79. avgFBodyBodyGyroMagMeanFreq
80. avgFBodyBodyGyroJerkMagMean
81. avgFBodyBodyGyroJerkMagStd
82. avgFBodyBodyGyroJerkMagMeanFreq
83. avgAngletBodyAccMeanGravity
84. avgAngletBodyAccJerkMeanGravityMean
85. avgAngletBodyGyroMeanGravityMean
86. avgAngletBodyGyroJerkMeanGravityMean
87. avgAngleXGravityMean
88. avgAngleYGravityMean
89. avgAngleZGravityMean
