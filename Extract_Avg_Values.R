Extract_Avg_Values <- function() {
     # this new dataset contains an average of each variable of the dataset X
     # each row is the average for the same subject and the same activity
     
     X_avg <<- X %>%
          select(-SubjectType) %>%
          group_by(ActivityLabel, SubjectId) %>%
          summarize(across(everything(),mean, na.rm = TRUE))
}
