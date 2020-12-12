## Loading of the dataset :
# the original dataset should be in the working directory, including the subdirectories "train" and "test"

# load the necessary packages and source the necessary scripts:
library(stringr)
source(paste0(getwd(),"./Load_Files.R"))
source(paste0(getwd(),"./Merge_df.R"))
source(paste0(getwd(),"./Clean_Labels.R"))
print(1)
# check if the files are in the good place and load them
if (!Load_Files(getwd())) {
     message("The expected files are missing.")
} else {
     # beginning of the work
     Merge_df()
     Clean_Labels()
     print(99)
}
