# CodeBook.md

This codebook serves to describe the variables, the data and any transformations or work that you performed to clean up the data .

## Variables 

### a) Subject

->  Unique numerical ID's representing a group of 30 volunteers in the experiement within an age bracket of 19-48 years

### b) Activity 

-> There were one of six activities performed by the volunteers

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

### c) Measurements

- The following 86 variables follow the naming conventions and abbreviation descriptions provided in the assignment README.txt and Features.txt files
- The original variable names have been altered to the list below by changing all characters to lower case and removing all non-alphanumerics to follow some recommended guidelines with respect to column header labelling (i.e descriptive in nature and consistent in format) 


tbodyaccmeanx

tbodyaccmeany

tbodyaccmeanz

tbodyaccstdx

tbodyaccstdy

tbodyaccstdz

tgravityaccmeanx

tgravityaccmeany

tgravityaccmeanz

tgravityaccstdx

tgravityaccstdy

tgravityaccstdz

tbodyaccjerkmeanx

tbodyaccjerkmeany

tbodyaccjerkmeanz

tbodyaccjerkstdx

tbodyaccjerkstdy

tbodyaccjerkstdz

tbodygyromeanx

tbodygyromeany

tbodygyromeanz

tbodygyrostdx

tbodygyrostdy

tbodygyrostdz

tbodygyrojerkmeanx

tbodygyrojerkmeany

tbodygyrojerkmeanz

tbodygyrojerkstdx

tbodygyrojerkstdy

tbodygyrojerkstdz

tbodyaccmagmean

tbodyaccmagstd

tgravityaccmagmean

tgravityaccmagstd

tbodyaccjerkmagmean

tbodyaccjerkmagstd

tbodygyromagmean

tbodygyromagstd

tbodygyrojerkmagmean

tbodygyrojerkmagstd

fbodyaccmeanx

fbodyaccmeany

fbodyaccmeanz

fbodyaccstdx

fbodyaccstdy

fbodyaccstdz

fbodyaccmeanfreqx

fbodyaccmeanfreqy

fbodyaccmeanfreqz

fbodyaccjerkmeanx

fbodyaccjerkmeany

fbodyaccjerkmeanz

fbodyaccjerkstdx

fbodyaccjerkstdy

fbodyaccjerkstdz

fbodyaccjerkmeanfreqx

fbodyaccjerkmeanfreqy

fbodyaccjerkmeanfreqz

fbodygyromeanx

fbodygyromeany

fbodygyromeanz

fbodygyrostdx

fbodygyrostdy

fbodygyrostdz

fbodygyromeanfreqx

fbodygyromeanfreqy

fbodygyromeanfreqz

fbodyaccmagmean

fbodyaccmagstd

fbodyaccmagmeanfreq

fbodybodyaccjerkmagmean

fbodybodyaccjerkmagstd

fbodybodyaccjerkmagmeanfreq

fbodybodygyromagmean

fbodybodygyromagstd

fbodybodygyromagmeanfreq

fbodybodygyrojerkmagmean

fbodybodygyrojerkmagstd

fbodybodygyrojerkmagmeanfreq

angletbodyaccmeangravity

angletbodyaccjerkmeangravitymean

angletbodygyromeangravitymean

angletbodygyrojerkmeangravitymean

anglexgravitymean

angleygravitymean

anglezgravitymean


## Data 

### Project Data & Description

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### Additional Data Information Sourced from Assignment README.txt & Feature.txt

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- ** Note: The total data set included a number of 'Inertial Signal' files which were not utilized as part of this assignmemt and have thus been omitted from this codebook.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


### Transformations & Other Details

1.	Training & Test sets were merged by first binding rows and then merged to each subject and activity by binding their columns
2.	The data set measurement columns were subsetted to extract only the measurements on the mean and standard deviation for each measurement.
3.	Descriptive activity names replaced their numercial index values
4.	The measurement labels were changed to all lower case and all non-alpha characters removed to create consistently formatted & descriptive variable names
5.	From the data set of 10299 observations across 561 columns a second, independent tidy data set of 180 rows and 88 columns was created summarizing the average of each extracted variable measurement for each activity and each subject.


