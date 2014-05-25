setwd("./UCI HAR Dataset")
# List files in folder
list.files()

# Read labels into data frame
featuresLabels<-read.table("./features.txt",header=FALSE)
activityLabels<-read.table("./activity_labels.txt",header=FALSE)

# Read activity column for each record into data frame
trainActivity<-read.table("./train/y_train.txt",header=FALSE)
testActivity<-read.table("./test/y_test.txt",header=FALSE)

# Read subject identifier colummn for each record into data frame
trainSubjects<-read.table("./train/subject_train.txt",header=FALSE)
testSubjects<-read.table("./test/subject_test.txt",header=FALSE)
names(trainSubjects)<-"subject"
names(testSubjects)<-"subject"
 
# Read measurements for each record into data frame
trainData<-read.table("./train/X_train.txt",header=FALSE)
testData<-read.table("./test/X_test.txt",header=FALSE)

# Assign names to measurements data frames' columns 
names(trainData)<-featuresLabels[,2]
names(testData)<-featuresLabels[,2]

# Join activity with string label to create activity string column
library(plyr)
trainActivityStringCol<-join(trainActivity,activityLabels,type="left")
testActivityStringCol<-join(testActivity,activityLabels,type="left")
names(trainActivityStringCol)<-c("activityCode","activityLabel")
names(testActivityStringCol)<-c("activityCode","activityLabel")

# Bind data with activity & subject identifier columns 
train_bind<-cbind(trainSubjects,trainActivityStringCol,trainData)
test_bind<-cbind(testSubjects,testActivityStringCol,testData)

# Bind train & test datasets to create the complete dataset
completeDataset<-rbind(train_bind,test_bind)

# Select variable names that include mean() and std() only
mean_variablesNames<-featuresLabels[grep("mean()",featuresLabels$V2,
                                         fixed=TRUE),]
std_variablesNames<-featuresLabels[grep("std()",featuresLabels$V2,
                                        fixed=TRUE),]
temp<-rbind(mean_variablesNames,std_variablesNames)
tidy_variablesNames<-as.vector(temp[order(temp$V1),2]);rm(temp)
tidy_variablesNames<-c("subject","activityCode","activityLabel",
                       tidy_variablesNames)
tidy_variablesNames<-head(tidy_variablesNames,n=-6) # delete last 6 var names

# Subset complete dataset using mean() & std() variable names
subTidyVars<-completeDataset[,tidy_variablesNames]

# Create tidy data frame with averages of each variable by activity 
# for each subject
library(reshape2)
subTidyMelt<-melt(subTidyVars,id.vars=c("subject","activityCode",
                                        "activityLabel"))
tidyDataset<-dcast(subTidyMelt,subject + activityCode + activityLabel
                   ~ variable,mean)

# Rename tidy dataset variables' names
listVariables <- as.vector(names(tidyDataset))
listVariables<-gsub("-mean()-","Mean",listVariables,fixed=T)
listVariables<-gsub("-mean()","Mean",listVariables,fixed=T)
listVariables<-gsub("-std()-","Stdeviation",listVariables,fixed=T)
listVariables<-gsub("-std()","Stdeviation",listVariables,fixed=T)
listVariables<-gsub("tBody","timeBody",listVariables)
listVariables<-gsub("tGravity","timeGravity",listVariables)
listVariables<-gsub("fBody","fourierBody",listVariables)
listVariables<-gsub("Acc","Acceleration",listVariables)
listVariables<-gsub("Gyro","Gyroscopic",listVariables)
listVariables<-gsub("Mag","Magnitude",listVariables)
names(tidyDataset)<-listVariables

# Write tidyDataset to csv file
write.csv(tidyDataset,"tidyDataset.csv")

