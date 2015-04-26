---
title: "README.md"
output: html_document
---
This is an R Markdown document explaining the different steps in the script **run_analysis.R** 
The script is arranges in 7 blocks with each perfoming their own tasks in successive order. The raw data for this script was saved on desktop in the folder **UCI HAR Dataset**  

###Block 1
Codes in this block clear the working space, set the working directory, creat a directory named **data** and load the packages uesd in the program

*rm(list=ls())
setwd("~/Coursera/DataScience/CleaningData")    
if (!file.exists("data")){dir.create("data")} else {cat("Directory already exists!")}   
library(dplyr)   
library(reshape2)* 

###Block 2
The script in this block esablishes a connection to the local text data **features.txt** and reads the content of this file into the R object **features** 

*f <- file("./project/UCI HAR Dataset/features.txt")  
features <- readLines(f)  
close(f)*  

###Block 3
Scripts in this block construct the data frame **trainSet** that contains training data set. 
In the first step, subject ids in **subject_train.txt** file is read and stored in the object **ID**

*temp <- file("./project//UCI HAR Dataset/train/subject_train.txt")  
ID <- as.numeric(readLines(temp))  
close(temp)*

The second step reads the corresponding activity labels from **y_train.txt** into the R object **ActivityLabels** 

*temp <- file("./project//UCI HAR Dataset/train/y_train.txt")  
ActivityLabels <- as.factor(readLines(temp))  
close(temp)*

In the next step vector **DataSubset** with values **train** is created which will serve as a new column in the table 

*DataSubset <- as.factor(rep("Train", length.out = length(ActivityLabels)))*

Next, the data in **X_train.txt** file is read into the R object **trainSet**

*trainSet <- read.table("./project/UCI HAR Dataset/train/X_train.txt")*

Finally,  columns **ID**, **DataSubset** and **ActivityLabels** are added to **trainSet** data.frame

*trainSet <- data.frame(ID, DataSubset, ActivityLabels , trainSet)*

###Block 4
Scripts in this block construct the data frame **testSet** that contains test data set. 
In the first step, subject ids in **subject_test.txt** file is read and stored in the object **ID**

*temp <- file("./project//UCI HAR Dataset/test/subject_test.txt")  
ID <- as.numeric(readLines(temp))  
close(temp)*

The second step reads the corresponding activity labels from **y_test.txt** into the R object **ActivityLabels** 

*temp <- file("./project//UCI HAR Dataset/test/y_test.txt")  
ActivityLabels <- as.factor(readLines(temp))  
close(temp)*

In the next step vector **DataSubset** with values **test** is created which will serve as a new column in the table 

*DataSubset <- as.factor(rep("Test", length.out = length(ActivityLabels)))*

Next, the data in **X_test.txt** file is read into the R object **testSet**

*testSet <- read.table("./project/UCI HAR Dataset/test/X_test.txt")*

Finally,  columns **ID**, **DataSubset** and **ActivityLabels** are added to **testSet** data.frame

*testSet <- data.frame(ID, DataSubset, ActivityLabels , testSet)*

###Block 5
Codes in this block combine the trian and test data and then extract the columns which contain mean and std in their column names into new data.frame. 
In the first step, testSet data is added to the end of trainSet data to make **combinedData**

*combinedData <- rbind(trainSet, testSet)*

Second, column names are constructed into vector **colNames** and added to the combined data

*colNames <- c("ID", "DataSubset", "ActivityLabel", features)  
colnames(combinedData) <- colNames*

Third, values in ActivityLabels are convert  from numbers to words

*levels(combinedData$ActivityLabel)<- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")*

Next, only columns with mean and std are selected into new data.frame **meanANDstdTable**.
To select either *mean*, *Mean* or *std* a regular expression is used in combination with the *grep()* function.

*meanANDstdTable <- select(combinedData, ID, DataSubset, ActivityLabel, grep("[Mm]ean|std", colnames(combinedData)))*

Finally, variable names are editted to remove undesirable characters using *gsub()*.
First, assign column names to a new object called **newColNames**

*newColNames <- colnames(meanANDstdTable)*

Then, remove 'numbers', '()', '(', ')',  '-', and ',' from column names

*newColNames <- gsub("([0-9]+ )", '', newColNames)  
newColNames <- gsub("()", "", newColNames, fixed=T)  
newColNames <- gsub("-", "", newColNames, fixed=T)  
newColNames <- gsub(",", "", newColNames)
newColNames <- gsub("\\(", "", newColNames)
newColNames <- gsub("\\)", "", newColNames)*

Finally, replace old variable names with the new names

*colnames(meanANDstdTable) <- newColNames*

###Block 6
Codes in this block make tidy data frame with mean of each varible for each activity and each subject.
The first step reorders the **meanANDstdTable** based on **ID** variable. Although, this step is not required to generate the final tidy data set, but it will be useful to have an ordered table which is named **orderdData** 

*meanANDstdTable\$ID <- as.factor(meanANDstdTable\$ID)  
orderdData <- arrange(meanANDstdTable, ID)* 

In the next step **orderdData** is reformated by the *melt()* function into the long thin table **meltData** where variables **ID** and **ActivityLabel** are assigned as *ids* and the remaining numerical variables are assigned as *measure.vars*

*meltData =melt(orderdData, id = c('ID', 'ActivityLabel'), measure.vars=colnames(orderdData)[4:length(colnames(orderdData))])*

Finally, *dcast()* function is used to generated the tidy data table **tidyData** in which mean values of numeric variables are calculated for each **ID** and **ActivityLabel**

*tidyData <- dcast(meltData, ID + ActivityLabel~variable, mean)*

###Block 7
the code in the last block writes the tidyTable to a text file in the data folder 

*write.table(tidyData, file= "./data/tidyTable.txt", row.name=FALSE)*

