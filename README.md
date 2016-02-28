# Getting-and-Cleaning-Data-Course-Project

  The purpose of this assignment is to create an R script called run_analysis.R that does the following:

1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Getting Started 

1. For the purposes of this assignment it is assumed the assignment data source has been set downloaded, extracted and the UCI HAR dataset folder has been set as the working directory
2. It is assumed the run_analysis.R script has been saved to and being sourced from the working directory


## The run_analysis.R script overview:

1. Checks for the required packages that will be used, installs and/or loads as necessary
2. Reads in all of the measurement and activity names
3. Reads in all 6 of the required subject, activity and measurement data tables for both the training and test data sets 
4. Merges the training and the test sets together using rbind() to create one data set for subjects, activity and measurement
5. Merges those three datasets using cbind() to create one completely merged dataset 
6. Extracts from the full dataset all of the measurements containing either a mean or standard deviation for each measurement
7. Replaces the numerical activities with the descriptive activity names from the activity label table
8. Converts all characters to lowercase and removes non-alphanumeric characters, thereby appropriately labelling the measurement data headers with descriptive variable names in a manner consistent with suggested best practices
9. Using the extracted dataset above, a second, independent and tidy data set of 180 rows by 88 columns is created.  It's a summary table of the average of each extracted measurement (ie. All Means & Std) for every combination of subject and activity.  It can be considered tidy because there is one variable per column and the data is sorted by subject in ascending order for each activity.
10. The tidy data set will be output to the working directory and can be viewed by executing the following code:

  tidydata <- read.table("tidy_data.txt", header = TRUE)
  
  View(tidydata)

### Notes:

1. See run_analysis.R script within this repo for detailed step by step instructions and explanatory comments
2. See CodeBook.md within this repo for additional details regarding the variables, data and transformation

