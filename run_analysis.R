library(dplyr)

#Extract the column name from the features.txt file
col_names <- read.table("./UCI HAR Dataset/features.txt", col.names = c("ColumnID","ColumnName"))


#Extract the activity labels from the activity_labels.txt file
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityCode","Activity"))

#Read the train data into the x_train variable
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")


#Read the activity codes for the training data
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "ActivityCode")

#Read the subject ID from for the training data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "SubjectID")

#merge the training data with the activity codes for the training data
train <- cbind(subject_train,y_train,x_train)


#Read the test data into the x_test variable
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")


#Read the activity codes for the test data
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "ActivityCode")

#Read the subject ID from the subject_test.txt file
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "SubjectID")

#merge the test data with the subject IDs and activity codes for the test data
test <- cbind(subject_test,y_test,x_test)


#######(1)Merges the training and the test sets to create one data set.#######
#Merge the two datasets and save the result into the data variable
data <- rbind(train,test)

#######(4)Appropriately labels the data set with descriptive variable names.#######
#Rename all columns in the data set (data) based on the column names in the features.txt file
colnames(data)[3:length(data)] <- as.list(as.character(col_names[,2]))


##The following columns are duplicated { names(data[, duplicated(colnames(data))]) }
##Fortunatelly, we don't need any of these columns
## So we can get rid of them before calling select() 
##since it will through an error if duplicate column names are present

##Remove all duplicate column names
data <- data[, !duplicated(colnames(data))]


#######(2)Extracts only the measurements on the mean and standard deviation for each measurement.#####
#Only extract keys {SubjectID,ActivityCode} and measurements on the mean {mean()} and standard {std()} deviation for each measurement
data <- select(data, grep("\\bSubjectID\\b|\\bActivityCode\\b|\\bmean()\\b|\\bstd()\\b",names(data)))

#######(3)Uses descriptive activity names to name the activities in the data set######
#Translate the activity codes (ActivityCode) into the activity names (Activity)
data <- merge(activity_labels, data)

#drop the ActivityCode column from the table
data <- select(data, -ActivityCode)

########(5)From the data set in step 4, creates a second, 
########independent tidy data set with the average of each variable for each activity and each subject.######
grouped_data  <- group_by(data,SubjectID ,Activity)
averaged_data <- summarise_all(grouped_data, funs(mean))

## Export the results into a CSV file:
write.csv(averaged_data, "./UCI HAR Dataset/Solution/tidy_data.csv")
