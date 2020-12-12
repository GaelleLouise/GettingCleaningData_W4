# ############################################################################ #
CODEBOOK

GitHub Repository:
# GettingCleaningData_W4
Coursera - Getting and Cleaning data - Programming Assignment Week 4
# ############################################################################ #

1st step: Load all the files in data frames

2nd step: merge all the data when appropriate in the same datframe

3rd step: remove the unnecessary columns and add the activity names in the dataset

4th step: rename the columns when appropriate

5th step: create a dataset with the averages by activity and subject

# ############################################################################ #

Please consult the initial dataset provided in the course to see the details of the information captured.

The final dataset contains two dataframes:

- The first one is named X and contains the following columns. Each row is an observation about 
one particular subject (among 30) and one particular activity (among 6) recorded with a
Smartphone at a 50Hz frequency :

     ActivityLabel => the label of the activity (ex: WALKING, SITTING, LYING, ...)
     SubjectId => from 1 to 30
     SubjectType => "train" or "test" depending on the original set of the subject
     
     The following measures are duplicated (mean and std version) and the measures named 
     with XYZ are replicated 3 times respectively for the X, Y and Z directions:
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


- The second one is named X_avg and contains an average of the same measures for each activity and
each subject of the experiment. It's a dataset of 180 rows (6 activiies * 30 subjects):

     ActivityLabel => the label of the activity (ex: WALKING, SITTING, LYING, ...)
     SubjectId => from 1 to 30
     The measure list is the same than in the 1st dataset
