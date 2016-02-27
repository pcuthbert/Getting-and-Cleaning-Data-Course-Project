## The following script is broken down into 5 sections and will do the following:

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject


## Check for the required packages that will be used, install if necessary and/or load as appropriate:

        if(!require("data.table"))      { install.packages("data.table")}
        if(!require("reshape2"))        { install.packages("reshape2")}

        require("data.table")
        require("reshape2")
        
        
## Next, read in all of the required data files
## Data includes the feature names & activity labels, subject ID's as well as the training and test data sets & their labels
## For the purposes of this assignment it is assumed the UCI HAR Dataset folder has been set as the working directory
## contains all the required datasets and subfolders and this script is being run from within it


## Feature & Activity Names
        
        features        <- read.table("features.txt",          stringsAsFactors =  FALSE)
        activity_labels <- read.table("activity_labels.txt",   stringsAsFactors =  FALSE)

## Training & Test Datasets

        train_subjects <- read.table("train/subject_train.txt", header = FALSE)
        test_subjects  <- read.table("test/subject_test.txt",   header = FALSE)

        train_activity   <- read.table("train/y_train.txt", header = FALSE)
        test_activity    <- read.table("test/y_test.txt",   header = FALSE)

        train_measurement   <- read.table("train/X_train.txt", header = FALSE)
        test_measurement    <- read.table("test/X_test.txt",   header = FALSE)


## 1. Merges the training and the test sets to create one data set.

## Separately merge the three different 

        merged_subjects         <- rbind(train_subjects, test_subjects)
        merged_activity         <- rbind(train_activity, test_activity)
        merged_measurement      <- rbind(train_measurement, test_measurement)

        names(merged_subjects)      = "subject"
        names(merged_activity)      = "activity"
        names(merged_measurement)   = features[,2]

        merged_data <- cbind(merged_subjects, merged_activity, merged_measurement)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

        mean_std_cols <- grep("mean|std", names(merged_data), ignore.case = TRUE)

        final_data <- merged_data[, c(1,2,mean_std_cols)]


## 3. Uses descriptive activity names to name the activities in the data set

        final_data$activity <- activity_labels[final_data$activity, 2]


## 4. Appropriately labels the data set with descriptive variable names.
## Converts all characters to lowercase and removes non-alphanumeric characters 

        names(final_data) <- tolower(gsub("[^[:alpha:]]","",names(final_data)))
        features_edited <- names(final_data)


## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

        tidy_data <- aggregate(. ~ subject + activity, final_data, mean)
        write.table(tidy_data, file = "tidy_data.txt")
        