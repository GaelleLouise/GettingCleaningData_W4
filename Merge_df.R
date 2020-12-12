Merge_df <- function() {
     # Merge the 2 datasets (test and train) into only one
     # for the different observations : X, y and subjects
     
     # Measures names are initialized with the features file:
     names(x_test) <- features$V2
     names(x_train) <- features$V2
     
     # Adds "test" or "train" as a new column "SubjectType" in both datasets X
     x_test$SubjectType <- "test"
     x_train$SubjectType <- "train"
     # Merge X (test & train):
     X_total <<- rbind(x_test,x_train)
     
     # Merge Subjects:
     names(subject_test) <- "SubjectId"
     names(subject_train) <- "SubjectId"
     subjects <<- rbind(subject_test, subject_train)
     
     #Merge Activities:
     y <<- rbind(y_test,y_train)
     #names(y) <<- "ActivityId"
}

