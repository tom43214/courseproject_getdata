run_analysis <- function() {
      
      library(dplyr)
      library(tidyr)
      
      ## Read in all necessary data sets
      X.train <- read.table("./UCI HAR Dataset/train/X_train.txt")
      y.train <- scan("./UCI HAR Dataset/train/y_train.txt")
      subject.train <- scan("./UCI HAR Dataset/train/subject_train.txt")
      X.test <- read.table("./UCI HAR Dataset/test/X_test.txt")
      y.test <- scan("./UCI HAR Dataset/test/y_test.txt")
      subject.test <- scan("./UCI HAR Dataset/test/subject_test.txt")
      activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
      features <- read.table("./UCI HAR Dataset/features.txt")
      
      ## 1. Combine training and test data into one data set with
      ##    activity and subject labels
      X <- rbind_all(list(X.train, X.test))
      names(X) <- make.names(features[, 2], unique = TRUE)
      activity <- c(y.train, y.test)
      subject <- c(subject.train, subject.test)
      dataset <- cbind(subject, activity, X)
      
      ## 2. Extract only means and stds
      data.meanstd <- 
            dataset %>% 
            select(subject,
                   activity,
                   matches("\\.(mean|std)\\."))
      
      ## 3. Replace activity numbers with descriptive names
      data.meanstd$activity <- tolower(activity.labels[data.meanstd$activity, 2])
      
      ## 4. Clean up descriptive feature names
      ##    Descriptive feature names were initially added in 
      ##    step 1 with make.names()
      names(data.meanstd) <- gsub("\\.", "",
                             gsub("BodyBody", "Body",
                             gsub("mean", "Mean",
                             gsub("std", "Std", names(data.meanstd)))))

            
      ## 5. Gather up all features into one column and add new column
      ##    with average for each subject/activity/feature
      data.averages <-
            data.meanstd %>%
            gather(feature, value, -(subject:activity)) %>%
            group_by(subject, activity, feature) %>%
            summarize(average = mean(value))
      
      
      write.table(data.averages, file = "tidy_dataset.txt", row.names = FALSE)
      
}
