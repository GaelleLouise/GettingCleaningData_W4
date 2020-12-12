Manage_Columns <- function() {
     # Keeps only mean & std measures:
     X <- X_total %>%
          select(c("SubjectType", grep("mean|std",names(X_total), value = TRUE))) %>%
          select(-c(grep("meanFreq",names(X_total), value = TRUE)))
     X <- cbind(y, subjects, X)
     names(activities) <- c("V1","ActivityLabel")
     X <- merge(activities, X, all = TRUE)
     X <<- select(X,-V1)
}
