Merge_df <- function() {
     # Measures names:
     names(x_test) <- features$V2
     names(x_train) <- features$V2
     
     # Adds "test" or "train" as "SubjectType" in both datasets
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

