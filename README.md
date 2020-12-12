# ############################################################################ #
README

Repository:
# GettingCleaningData_W4
Coursera - Getting and Cleaning data - Programming Assignment Week 4

The purpose of this project is to prepare tidy data that can be used for later analysis
The original dataset should be in the working directory and its main information follows: 
# ############################################################################ #
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
# ############################################################################ #
The main script is run_analysis.R. 
It's launching successively all the other necessary scripts to obtain a tidy dataset.

For all the scripts to work, you should check that the following packages are installed
(the library function will be called when necessary):
- stringr
- dplyr

# ############################################################################ #

The necessary scripts are following (they are sourced when necessary):
- Load_Files.R => load every necessary file in a specific dataframe
- Merge_df.R => merge all the data from the same granularity in the same dataframe
- Manage_Columns.R => select only the expected information and add the activity name
- Clean_Labels.R => use clear names for each column of the dataset
- Extract_Avg_Values.R => average of the 1st dataset for each subject and each activity

# ############################################################################ #

