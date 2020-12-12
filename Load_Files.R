Load_Files <- function(directory) {
   # data from test set:
   if(!file.exists(paste(getwd(),"./test", sep = ""))) {
      message ("Directory 'test' doesn't exist! Could not load the data")
      return(FALSE)
   } else {
      subject_test <<- read.table(paste(directory,"./test/subject_test.txt", sep = ""))
      x_test <<- read.table(paste(directory,"./test/X_test.txt", sep = ""))
      y_test <<- read.table(paste(directory,"./test/y_test.txt", sep = ""))
      # common files for test & train data sets:
      features <<- read.table(paste(directory,"./features.txt", sep = ""))
      activities <<- read.table(paste(directory,"./activity_labels.txt", sep = ""))
   }

   #data from train set:
   if(!file.exists("./train")) {
      message ("Directory 'train' doesn't exist! Could not load the data")
      return(FALSE)
   } else {
      subject_train <<- read.table(paste(directory,"./train/subject_train.txt", sep = ""))
      x_train <<- read.table(paste(directory,"./train/X_train.txt", sep = ""))
      y_train <<- read.table(paste(directory,"./train/y_train.txt", sep = ""))
      message("All the files were loaded!")
      return(TRUE)
   }
}