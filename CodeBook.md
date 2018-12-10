(1) The raw data is downloaded from this link (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
(2) The zip file is extracted into a the "UCI HAR Dataset" folder.
(3) The following files are loaded:

      varaible names (./UCI HAR Dataset/features.txt)
      activity labels (./UCI HAR Dataset/activity_labels.txt)
      training data measuremnets (./UCI HAR Dataset/train/X_train.txt)
      training data activity codes (./UCI HAR Dataset/train/y_train.txt)
      training data subject IDs (./UCI HAR Dataset/train/subject_train.txt)
      test data measuremnets (./UCI HAR Dataset/test/X_test.txt)
      test data activity codes (./UCI HAR Dataset/test/y_test.txt)
      test data subject IDs (./UCI HAR Dataset/test/subject_test.txt)

(4) for both the test data and the training data, the following files are merged:
    subject IDs + activity codes + measuremnets
(5) The training and test data are merged into a single data set
(6) The columns in the new data set are labled according to the features.txt file
(7) Duplicate columns appear in the data set, since none of them are needed, all colunms with the duplicate names are dropped
(8) Only the keys {SubjectID,ActivityCode} and measurements on the mean and standard deviation are kept, all other measuremnts are dropped
(9) The activity labels in activity_labels.txt are added to the data set based on the activity code
(10) The activity codes are dropped since they are replaced by the activity labels
(11) A second data set is created by grouoing the data based on {SubjectID,ActivityLabel} and averaging all measurements
(12) The results are exported into (./UCI HAR Dataset/tidy_data.csv) file.
(13) The output file contains the following variables:
      (keys):
        SubjectID: The numeric ID for the subject perfoming the activity
        Activity: The name of the activity performed by the subject

      (Measurements):
        The following measurements are averaged for that activity and subject:
          mean(): Mean value
          std(): Standard deviation
        For the following signals
          tBodyAcc-mean()-X:
          tBodyAcc-mean()-Y:
          tBodyAcc-mean()-Z:
          tBodyAcc-std()-X: 
          tBodyAcc-std()-Y:
          tBodyAcc-std()-Z:
          tGravityAcc-mean()-X:
          tGravityAcc-mean()-Y:
          tGravityAcc-mean()-Z:
          tGravityAcc-std()-X:
          tGravityAcc-std()-Y:
          tGravityAcc-std()-Z:
          tBodyAccJerk-mean()-X:
          tBodyAccJerk-mean()-Y:
          tBodyAccJerk-mean()-Z:
          tBodyAccJerk-std()-X:
          tBodyAccJerk-std()-Y:
          tBodyAccJerk-std()-Z:
          tBodyGyro-mean()-X:
          tBodyGyro-mean()-Y:
          tBodyGyro-mean()-Z:
          tBodyGyro-std()-X:
          tBodyGyro-std()-Y:
          tBodyGyro-std()-Z:
          tBodyGyroJerk-mean()-X:
          tBodyGyroJerk-mean()-Y:
          tBodyGyroJerk-mean()-Z:
          tBodyGyroJerk-std()-X:
          tBodyGyroJerk-std()-Y:
          tBodyGyroJerk-std()-Z:
          tBodyAccMag-mean():
          tBodyAccMag-std():
          tGravityAccMag-mean():
          tGravityAccMag-std():
          tBodyAccJerkMag-mean():
          tBodyAccJerkMag-std():
          tBodyGyroMag-mean():
          tBodyGyroMag-std():
          tBodyGyroJerkMag-mean():
          tBodyGyroJerkMag-std():
          fBodyAcc-mean()-X:
          fBodyAcc-mean()-Y:
          fBodyAcc-mean()-Z:
          fBodyAcc-std()-X:
          fBodyAcc-std()-Y:
          fBodyAcc-std()-Z:
          fBodyAccJerk-mean()-X:
          fBodyAccJerk-mean()-Y:
          fBodyAccJerk-mean()-Z:
          fBodyAccJerk-std()-X:
          fBodyAccJerk-std()-Y:
          fBodyAccJerk-std()-Z:
          fBodyGyro-mean()-X:
          fBodyGyro-mean()-Y:
          fBodyGyro-mean()-Z:
          fBodyGyro-std()-X:
          fBodyGyro-std()-Y:
          fBodyGyro-std()-Z:
          fBodyAccMag-mean():
          fBodyAccMag-std():
          fBodyBodyAccJerkMag-mean():
          fBodyBodyAccJerkMag-std():
          fBodyBodyGyroMag-mean():
          fBodyBodyGyroMag-std():
          fBodyBodyGyroJerkMag-mean():
          fBodyBodyGyroJerkMag-std():

    Please refer to the file (./UCI HAR Dataset/features_info.txt) for details about the above measurements.
