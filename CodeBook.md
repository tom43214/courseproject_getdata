##Codebook
Variable  | Description
------------- | :-------------
| subject  | Identifies subject performing experiment
||Values: 1 - 30
|
| activity  | Indicates activity being performed
||Values: laying, sitting, standing, walking, walking_downstairs, walking_upstairs
|
| feature | Indicates feature being averaged (see original dataset documentation for detailed description):
||Values: tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ, tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ, tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ, tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ, tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ, tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ, tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ, tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ, tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ, tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ, tBodyAccMagMean, tBodyAccMagStd, tGravityAccMagMean, tGravityAccMagStd, tBodyAccJerkMagMean, tBodyAccJerkMagStd, tBodyGyroMagMean, tBodyGyroMagStd, tBodyGyroJerkMagMean, tBodyGyroJerkMagStd, fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ, fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ, fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ, fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ, fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ, fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ, fBodyAccMagMean, fBodyAccMagStd, fBodyAccJerkMagMean, fBodyAccJerkMagStd, fBodyGyroMagMean, fBodyGyroMagStd, fBodyGyroJerkMagMean, fBodyGyroJerkMagStd
||Abbreviations
||t: time domain
||f: frequency domain
||Acc: accelerometer
||Gyro: gyroscope
||Mag: magnitude
||Std: standard deviation
||
|
| average | Denotes mean value of a feature of a subject and activity
||Values are unitless because they are based on figures normalized to range of -1 to 1
