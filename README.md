README for Getting and Cleaning Data course project
----------------------------------------------------

### run_analysis.R

* Requires packages dplyr and tidyr

This script takes the means and standard deviations of the features of the UCI HAR dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), computes their means, and puts them in a tidy format utilizing the following steps.

1. Combines training and test data into one data set including activity and subject labels usng cbind(), rbind(), and c() functions. Adds feature names with make.names().
2. Extracts only means and standard deviations using select() function from dplyr, taking only those features which in the original dataset ended in mean() and std() because these seem to be the "mean and standard deviation for each measurement." In the actual call to matches(), I used periods, because make.names() replaced the original feature punctuation with periods.
3. Replaces activity numbers with descriptive names from data set, converting them to lowercase.
4. Cleans up descriptive feature names which were initially added in step 1. Now, gsub is used to remove periods, duplicated words, and add some "CamelCase" capitalization for readability. Names were left in abbreviated forms for the sake of conciseness/readability and consistency with original data.
5. Gathers up all features into one column and adds a new column with averages (means) of each subject/activity/feature using tidyr's gather() dplyr's group_by() and summarize().

### Note about tidy data
* I chose the long form because the assignment description says that either long or wide form is acceptible. Further, the course TA clarified that "The wide or narrow form is tidy" and explained that what is tidy depends on the problem being solved ( first post in https://class.coursera.org/getdata-010/forum/thread?thread_id=49 ) See also: https://class.coursera.org/getdata-010/forum/thread?thread_id=241
* An example of a long-form tidy data set similar to this one can be found on page 4 of Hadley Wickham's paper on tidy data at http://vita.had.co.nz/papers/tidy-data.pdf
* The resulting table is 11880 x 4. The same data in the wide format would be 180 x 68. 
* The long form enables us to use a descriptive column name ("average") to describe the nature of the value. For a table in the wide format, with only features as variable names, we must either add "mean" or "average" to every column name or make people guess from a file name, external information, or the like.
* Getting the wide version would require only a slight change in the script with the removal of gather() and switching summarize() to summarize_each().

### Note about feature names
* As noted above, names were left in abbreviated forms for the sake of conciseness/readability and consistency with original data.
* More detailed description can be found in CodeBook.md as well as in the original dataset documentation

## Reproducing this analysis
To reproduce the results of this analysis, run the script run_analysis.R (no parameters) with the folder "UCI HAR Dataset" in your working directory.
