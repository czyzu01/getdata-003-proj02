getdata-003-proj02
==================

Coursera, Getting and Cleaning Data. Project no. 2

# Assumptions
## Working set
This script is working based on data provided by http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and provided for Coursera class at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## Working directory
This script assumess that it is run in side direcotry with data. This direcotry is usually created while unziping dataset.

# Process
This section provides a walkthrough of run_analysis.R file contained in this git.
Overall schema of work looks like follows:

1. load names of features
2. load info about activities
3. read train set and add columns for activity and for subject
4. read train set and add columns for activity and for subject
5. combine to sets
6. select data with mean and std dev.
7. calculate means for each column (grouped by subject, activity)
8. write result

## Dictionaries
The first step is to load names of different measurements that are stored in data set. Data are read from a dictionary file, then coded into a naming convention associated with R. This is done by regular expressions that remove special characters like `()-,` and running upper on letter following `-` or `,`. 

Second step was to load dictionary of activites as to create a human readable data set with activities named instead of "foreign key" representation.


## Loading of data sets.

> Note: this procedure could be turned into function, but since it was only to sets, this was deemed unnecessary.

All data are loaded using `read.table` (without any special parameters). After each load column names for data.frame are set. Especially names of columns that were loaded into freatures data frame and cleaned in previous step. Next all three data.frames were combined using `cbind` command and original data were discarded.

This procedure was reapeated for `test` and `train` datasets.

Those two sets were then combined using `rbind` command.

## Selecting interesting variables (lean data set)
Lean data set was created using a subsetting functionality of R. Thanks to `grep` function only variables containing `Mean` and `Std` in variable name were selected. Plus activity identifier and subject identifier.


## Adding human readable activity
After lean data set was obtained a join with activity dictionary was created, allowing for addition of human readable activity column to be added (via `merge`)

## Creation of tidy set
Tidy set was created thanks to `ddply` and `numcolwise` function from `plyr` library. `ddply` allowed for a group by of over two variables, and `numcolwise` allowed for calculating `mean` over each columns. Last step assumed fixing column names by adding `avg` before each numerical variable in the data.frame. 
> This assumes specific naming convention that is used throughout the script.

## Write tidy dataset
Writing data set to CSV is done by `write.csv` function.




