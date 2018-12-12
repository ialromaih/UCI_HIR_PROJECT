1. The raw data is downloaded from this link (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. The zip file is extracted into a the "UCI HAR Dataset" folder.
3. The following files are loaded
- Varaible names  `./UCI HAR Dataset/features.txt`
- Activity labels `./UCI HAR Dataset/activity_labels.txt`
- Training data
  - Measuremnets   `./UCI HAR Dataset/train/X_train.txt`
  - Activity codes `./UCI HAR Dataset/train/y_train.txt`
  - Subject IDs    `./UCI HAR Dataset/train/subject_train.txt`
- test data
  - Measuremnets   `./UCI HAR Dataset/test/X_test.txt`
  - Activity codes `./UCI HAR Dataset/test/y_test.txt`
  - Subject IDs    `./UCI HAR Dataset/test/subject_test.txt`

4. for both the test data and the training data, the following files are merged:
    subject IDs + activity codes + measuremnets
5. The training and test data are merged into a single data set
6. The columns in the new data set are labled according to the features.txt file
7. Duplicate columns appear in the data set, since none of them are needed, all colunms with the duplicate names are dropped
8. Only the keys {SubjectID,ActivityCode} and measurements on the mean and standard deviation are kept, all other measuremnts are dropped
9. The activity labels in activity_labels.txt are added to the data set based on the activity code
10. The activity codes are dropped since they are replaced by the activity labels
11. A second data set is created by grouoing the data based on {SubjectID,ActivityLabel} and averaging all measurements
12. The results are exported into (./UCI HAR Dataset/tidy_data.csv) file.
13. The output file contains the following variables:
### keys:
- SubjectID (Integer): The numeric ID for the subject perfoming the activity
- Activity (String): The name of the activity performed by the subject

### Measurements:
The following measurements are averaged for that activity and subject:
- mean(): Mean value
- std(): Standard deviation

For the following signals 
- tBodyAcc-mean()-X (numeric)
- tBodyAcc-mean()-Y (numeric)
- tBodyAcc-mean()-Z (numeric)
- tBodyAcc-std()-X (numeric)
- tBodyAcc-std()-Y (numeric)
- tBodyAcc-std()-Z (numeric)
- tGravityAcc-mean()-X (numeric)
- tGravityAcc-mean()-Y (numeric)
- tGravityAcc-mean()-Z (numeric)
- tGravityAcc-std()-X (numeric)
- tGravityAcc-std()-Y (numeric)
- tGravityAcc-std()-Z (numeric)
- tBodyAccJerk-mean()-X (numeric)
- tBodyAccJerk-mean()-Y (numeric)
- tBodyAccJerk-mean()-Z (numeric)
- tBodyAccJerk-std()-X (numeric)
- tBodyAccJerk-std()-Y (numeric)
- tBodyAccJerk-std()-Z (numeric)
- tBodyGyro-mean()-X (numeric)
- tBodyGyro-mean()-Y (numeric)
- tBodyGyro-mean()-Z (numeric)
- tBodyGyro-std()-X (numeric)
- tBodyGyro-std()-Y (numeric)
- tBodyGyro-std()-Z (numeric)
- tBodyGyroJerk-mean()-X (numeric)
- tBodyGyroJerk-mean()-Y (numeric)
- tBodyGyroJerk-mean()-Z (numeric)
- tBodyGyroJerk-std()-X (numeric)
- tBodyGyroJerk-std()-Y (numeric)
- tBodyGyroJerk-std()-Z (numeric)
- tBodyAccMag-mean() (numeric)
- tBodyAccMag-std() (numeric)
- tGravityAccMag-mean() (numeric)
- tGravityAccMag-std() (numeric)
- tBodyAccJerkMag-mean() (numeric)
- tBodyAccJerkMag-std() (numeric)
- tBodyGyroMag-mean() (numeric)
- tBodyGyroMag-std() (numeric)
- tBodyGyroJerkMag-mean() (numeric)
- tBodyGyroJerkMag-std() (numeric)
- fBodyAcc-mean()-X (numeric)
- fBodyAcc-mean()-Y (numeric)
- fBodyAcc-mean()-Z (numeric)
- fBodyAcc-std()-X (numeric)
- fBodyAcc-std()-Y (numeric)
- fBodyAcc-std()-Z (numeric)
- fBodyAccJerk-mean()-X (numeric)
- fBodyAccJerk-mean()-Y (numeric)
- fBodyAccJerk-mean()-Z (numeric)
- fBodyAccJerk-std()-X (numeric)
- fBodyAccJerk-std()-Y (numeric)
- fBodyAccJerk-std()-Z (numeric)
- fBodyGyro-mean()-X (numeric)
- fBodyGyro-mean()-Y (numeric)
- fBodyGyro-mean()-Z (numeric)
- fBodyGyro-std()-X (numeric)
- fBodyGyro-std()-Y (numeric)
- fBodyGyro-std()-Z (numeric)
- fBodyAccMag-mean() (numeric)
- fBodyAccMag-std() (numeric)
- fBodyBodyAccJerkMag-mean() (numeric)
- fBodyBodyAccJerkMag-std() (numeric)
- fBodyBodyGyroMag-mean() (numeric)
- fBodyBodyGyroMag-std() (numeric)
- fBodyBodyGyroJerkMag-mean() (numeric)
- fBodyBodyGyroJerkMag-std() (numeric)

Please refer to the file `./UCI HAR Dataset/features_info.txt` for details about the above measurements.
