Clean_Labels <- function() {
     # The key labels are already correct (ActivityLabel, SubjectId, ...)
     # We want the measures names to be correct too
     # => remove the parenthesis from the column names
     names(X) <<- sub("\\(\\)","",names(X))
}
