## Loading of the dataset :
# the original dataset should be in the working directory, including the subdirectories "train" and "test"

# load the necessary packages and source the necessary scripts:
library(stringr)
library(dplyr)
source(paste0(getwd(),"./Load_Files.R"))
source(paste0(getwd(),"./Merge_df.R"))
source(paste0(getwd(),"./Manage_Columns.R"))
source(paste0(getwd(),"./Clean_Labels.R"))
source(paste0(getwd(),"./Extract_Avg_Values.R"))

# step 1: check if the files are in the good place and load them
if (!Load_Files(getwd())) {
     message("The expected files are missing.")
} else {            # beginning of the work:
     # step 2: merge the training and test sets into only one
     Merge_df()
     
     # step 3: remove the unnecessary columns and add the activity names in the dataset
     Manage_Columns()
     
     # step 4: rename the columns when appropriate
     Clean_Labels()
     
     # step 5: create a new dataset with the average values by activity and subject
     Extract_Avg_Values()
     # and extract it as a txt file
     write.table(X_avg, paste0(getwd(),"./X_avg.txt"), row.names = FALSE)
}
