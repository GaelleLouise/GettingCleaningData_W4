# ############################################################################ #
CODEBOOK

Repository:
# GettingCleaningData_W4
Coursera - Getting and Cleaning data - Programming Assignment Week 4
# ############################################################################ #

1st step: Load all the files in data frames

2nd step: merge all the data when appropriate in the same datframe

3rd step: remove the unnecessary columns

4th step: rename the column names and the activities in the dataset

# ############################################################################ #

The final dataset contains several dataframes:

activity:
     ActivityId => from 1 to 6
     ActivityLabel => the corresponding labels (ex: WALKING, SITTING, LYING, ...)
     
subject:
     SubjectId => from 1 to 30
     DataSet => "train" or "test" depending on the original set of the subject
     

