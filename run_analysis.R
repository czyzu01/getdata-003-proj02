## read names of features
features<-read.table("features.txt", strip.white=TRUE)
names(features)<-c("featureNo", "featureName")
# make names according to naming conventions for R
features$featureName <- gsub("[\\(\\)]", "", features$featureName)
features$featureName <- gsub("[\\-,](.)", "\\U\\1\\E", features$featureName, perl=TRUE)
activities<-read.table("activity_labels.txt", strip.white=TRUE)
names(activities)<-c("posOfActivity", "nameOfActivity")

## read data from source (test)
test<-read.table("test/X_test.txt");
names(test)<-features$featureName;
y_test<-read.table("test/y_test.txt")
names(y_test)<-c("activity");
subject_test<-read.table("test/subject_test.txt")
names(subject_test)<-c("subject");
extendedTest<-cbind(test, y_test, subject_test);

# cleanup of unnecessary data.frames
rm(test, y_test, subject_test)

## read data from source (train)
train<-read.table("train/X_train.txt");
names(train)<-features$featureName;
y_train<-read.table("train/y_train.txt")
names(y_train)<-c("activity");
subject_train<-read.table("train/subject_train.txt")
names(subject_train)<-c("subject");
extendedTrain<-cbind(train, y_train, subject_train);

# cleanup of unnecessary data.frames
rm(train, y_train, subject_train)

## combine two sets
fullDataSet<-rbind (extendedTest, extendedTrain);

# cleanup of unnecessary data.frames
rm(extendedTrain, extendedTest)


## select subset of data
leanDataSet<-fullDataSet[,grep("Mean|Std|activity|subject",names(fullDataSet))]

# cleanup of unnecessary data.frames
rm(fullDataSet)

#Uses descriptive activity names to name the activities in the data set
leanDataSet<-merge(activities, leanDataSet, by.x="posOfActivity", by.y="activity")

# create a tidy set of for subject, and activity
library(plyr)
tidySet<-ddply(leanDataSet, c("subject", "nameOfActivity"), numcolwise(mean))
names(tidySet)<-gsub("^([aft])","avg\\U\\1\\E", names(tidySet), perl=TRUE)

write.csv(tidySet, file="tidySet.csv", row.names=FALSE)