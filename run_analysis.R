# run_analysis.R  at https://github.com/alavimr/CleaningData

# BLOCK 1
#----------------------------------------------------------------------------------
# clear working environment and set working directory
rm(list=ls())                                  
setwd("~/Coursera/DataScience/CleaningData") 

#Make a directory
if (!file.exists("data")){
    dir.create("data")
} else {
    cat("Directory already exists!")
}

# load necessary packages
library(dplyr)
library(reshape2)


# BLOCK 2
#----------------------------------------------------------------------------------
# read features.txt into a vector called 'features' representing column names
f <- file("./project/UCI HAR Dataset/features.txt")
features <- readLines(f)
close(f)


# BLOCK 3
#----------------------------------------------------------------------------------
# CONSTRUCT TRAINING DATA TABLE

# read subject ids, convert to numeric and assign to variable 'ID'
temp <- file("./project//UCI HAR Dataset/train/subject_train.txt")
ID <- as.numeric(readLines(temp)) # make this as.factor
close(temp)

# read activity labels, convert to factor and assign to variable 'ActivityLabels'
temp <- file("./project//UCI HAR Dataset/train/y_train.txt")
ActivityLabels <- as.factor(readLines(temp))  # make this as.factor
close(temp)

# make a vector called 'DataSubset' with train as its values
DataSubset <- as.factor(rep("Train", length.out = length(ActivityLabels)))

# read train data into a data.frame called 'trainSet'
trainSet <- read.table("./project/UCI HAR Dataset/train/X_train.txt")

# add ID, DataSubset and ActivityLabels columns to trainSet data
trainSet <- data.frame(ID, DataSubset, ActivityLabels , trainSet)


# BLOCK 4
#----------------------------------------------------------------------------------
# CONSTRUCT TEST DATA TABLE

# read subject ids, convert to numeric and assign to variable 'ID'
temp <- file("./project//UCI HAR Dataset/test/subject_test.txt")
ID <- as.numeric(readLines(temp))  # make this as.factor
close(temp)

# read activity labels, convert to factor and assign to variable 'ActivityLabels'
temp <- file("./project//UCI HAR Dataset/test/y_test.txt")
ActivityLabels <- as.factor(readLines(temp))   # make this as.factor
close(temp)

# make a vector called 'DataSubset' with test as its values
DataSubset <- as.factor(rep("Test", length.out = length(ActivityLabels)))

# read test data into a data.frame called 'testSet'
testSet <- read.table("./project/UCI HAR Dataset/test/X_test.txt")

# add ID, DataSubset and ActivityLabels columns to testSet data
testSet <- data.frame(ID, DataSubset, ActivityLabels , testSet)


# BLOCK 5
#----------------------------------------------------------------------------------
# MAKE A DATAFRAME THAT COMBINEs TRAIN AND TEST DATA, AND ADD COLUMN NAMES

combinedData <- rbind(trainSet, testSet)                      # add test data to the end of train data
colNames <- c("ID", "DataSubset", "ActivityLabel", features)  # make colnames
colnames(combinedData) <- colNames                            # assigne colnames to combined data

# convert ActivityLabels from numbers to words
levels(combinedData$ActivityLabel)<- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING" )

# make a new table with only mean and std columns from combined data
meanANDstdTable <- select(combinedData, ID, DataSubset, ActivityLabel, grep("[Mm]ean|std", colnames(combinedData)))

# revise colomn names 
newColNames <- colnames(meanANDstdTable)               # assigne colnames to a new variable
newColNames <- gsub("([0-9]+ )", '', newColNames)      # remove numbers at the begining of names
newColNames <- gsub("()", "", newColNames, fixed=T)    # remove () from names
newColNames <- gsub("-", "", newColNames, fixed=T)     # remove "-" from names 
newColNames <- gsub(",", "", newColNames)              # remove "," from names
newColNames <- gsub("\\(", "", newColNames)            # remove "(" from names
newColNames <- gsub("\\)", "", newColNames)            # remove ")" from names
colnames(meanANDstdTable) <- newColNames               # replace old colnames with new colnames


# BLOCK 6
#----------------------------------------------------------------------------------
# DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT
                            
# ordere table based on id
meanANDstdTable$ID <- as.factor(meanANDstdTable$ID)   # convert ID to factor
orderdData <- arrange(meanANDstdTable, ID)            # order the table based on ascending ID values

# melt data
meltData =melt(orderdData, id = c('ID', 'ActivityLabel'), measure.vars=colnames(orderdData)[4:length(colnames(orderdData))])

# summarize data as mean of each variable for each Activity and each subject
tidyData <- dcast(meltData, ID + ActivityLabel~variable, mean)


# BLOCK 7
#----------------------------------------------------------------------------------
# WRITE TIDYDATA TABLE TO DATA FOLDER ON DESKTOP

write.table(tidyData, file= "./data/tidyTable.txt", row.name=FALSE)

