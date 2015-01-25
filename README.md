README for Getting and Cleaning Data course project
----------------------------------------------------

### run_analysis.R

* Requires packages dplyr and tidyr

This script takes the means and standard deviations of the features of the UCI HAR dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), computes their means, and puts them in a tidy format utilizing the following steps.

1. Combines training and test data into one data set along with activity and subject labels usng cbind(), rbind(), and c() functions. Adds feature names with make.names().
2. Extracts only means and standard deviations using select() function from dplyr, taking only those features which in the original dataset ended in mean() and std() because these seem to be the "mean and standard deviation for each measurement." In the actual call to matches(), I used periods, because make.names() replaced the original feature punctuation with periods.
3. Replaces activity numbers with descriptive names from data set, converting them to lowercase.
4. Cleans up descriptive feature names which were initially added in step 1. Now, gsub is used to remove periods, duplicated words, and add some "CamelCase" capitalization for readability.
5. Gathers up all features into one column and adds a new column with averages (means) of each subject/activity/feature using tidyr's gather() dplyr's group_by() and summarize().

### Note about tidy data format
The assignment description says that either long or wide form is acceptible, and I chose the long form. The resulting table is 11880 x 4. The same data in the wide format would be 180 x 68.

### Note about feature names
