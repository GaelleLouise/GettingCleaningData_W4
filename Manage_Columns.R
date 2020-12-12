Manage_Columns <- function() {
     # We want now a unique dataset X with the subject, the activity name
     # and only the measures about mean and std
     
     # Keeps only mean & std measures:
     X <- X_total %>%
          select(c("SubjectType", grep("mean|std",names(X_total), value = TRUE))) %>%
          select(-c(grep("meanFreq",names(X_total), value = TRUE)))
     
     # Add the activity Ids and the subject Ids to the X dataset
     X <- cbind(y, subjects, X)
     names(activities) <- c("V1","ActivityLabel")
     
     # Add the Activity names and remove the activity Ids
     X <- merge(activities, X, all = TRUE)
     X <<- select(X,-V1)
}
