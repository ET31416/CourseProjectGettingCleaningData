README for Course Project - Getting and Cleaning Data
========================================================
Contents in this repository:  
* "run_analysis.R" - runs analysis on (unzipped) original dataset that results in "tidyDataset.txt"  
* "Codebook.md" - codebook describing variables and contents of "tinyDatatset.txt"  
* "tinyDataset.csv" - table that contains the averages of selected variables by activity for each subject from the *Human Activity Recognition Using Smartphones Data Set* (original data set).

**"run_analys.R" pseudo-code**

1. Read labels into data frame 
2. Read activity column for each record into data frame  
3. Read subject identifier colummn for each record into data frame  
4. Read measurements for each record into data frame
5. Assign names to measurements data frames' columns 
6. Join activity with string label to create activity string column
7. Bind data with activity & subject identifier columns 
8. Bind train & test datasets to create the complete dataset
9. Select variable names that include mean() and std() only
10. Subset complete dataset using mean() & std() variable names
11. Create tidy data frame with averages of each variable by activity 
12. for each subject
13. Rename tidy dataset variables' names
14. Write tidyDataset to csv file

