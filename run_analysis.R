#Read the files about training
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#Read the file about the activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
names(activity_labels)<- c("Training_label","Activity")

#Read the file about the features
features <- read.table("./data/UCI HAR Dataset/features.txt")
features <- features[,2]
#Use the features table to get column names of X_train
names(X_train) <- features
#Merge X_train, Y_train and activity_labels tables
X_train_Y <- cbind(Y_train,X_train)
XY_train_subject <- cbind(subject_train, X_train_Y)
names(XY_train_subject)[1]<- paste("Subject")
names(XY_train_subject)[2]<- paste("Training_label")
XY_train_subject1 = merge(activity_labels,XY_train_subject,all=TRUE)

XY_train_subject1$data_type <- c("train")

#Read the files about test
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
#features <- features[,2]
#Use the features table to get column names of X_test
names(X_test) <- features
#Merge X_test, Y_test and activity_labels tables
X_test_Y <- cbind(Y_test,X_test)
XY_test_subject <- cbind(subject_test, X_test_Y)
names(XY_test_subject)[1]<- paste("Subject")
names(XY_test_subject)[2]<- paste("Training_label")
XY_test_subject1 = merge(activity_labels,XY_test_subject,all=TRUE)
XY_test_subject1$data_type <- c("test")

#Merge the datasets for train and test
XY_subject <- rbind(XY_train_subject1, XY_test_subject1)

#Identifying the columns which have word "mean"
meancols <- grep("mean",names(XY_subject),ignore.case=TRUE,value=FALSE)
#Identifying the columns which have word "std" (standard deviation)
stdcols <- grep("std",names(XY_subject),ignore.case=TRUE,value=FALSE)
reqcols <- sort(c(stdcols,meancols))
#Adding the identity columns to identify a row
reqcols1<- c(565,3,2,reqcols)

XY_subject_rel <- XY_subject[,reqcols1]
#Label the data set with descriptive variable names
rep1 <- gsub("tBodyAcc-", "TimeBodyAcceleration-", names(XY_subject_rel),ignore.case=TRUE)
rep2 <- gsub("tGravityAcc-", "TimeGravityAcceleration-", rep1,ignore.case=TRUE)
rep3 <- gsub("tBodyAccJerk-", "TimeBodyAccelerationJerkSignal-", rep2,ignore.case=TRUE)
rep4 <- gsub("tBodyGyro-", "TimeBodyAngularVelocity-", rep3,ignore.case=TRUE)
rep5 <- gsub("tBodyGyroJerk-", "TimeBodyAngularVelocityJerkSignal-", rep4,ignore.case=TRUE)
rep6 <- gsub("tBodyAccMag-", "TimeBodyAccelerationMagnitude-", rep5,ignore.case=TRUE)
rep7 <- gsub("tGravityAccMag-", "TimeGravityAccelerationMagnitude-", rep6,ignore.case=TRUE)
rep8 <- gsub("tBodyAccJerkMag-", "TimeBodyAccelerationJerkSignalMagnitude-", rep7,ignore.case=TRUE)
rep9 <- gsub("tBodyGyroMag-", "TimeBodyAngularVelocityMagnitude-", rep8,ignore.case=TRUE)
rep10 <- gsub("tBodyGyroJerkMag-", "TimeBodyAngularVelocityJerkSignalMagnitude-", rep9,ignore.case=TRUE)
rep11 <- gsub("fBodyAcc-", "FrequencyBodyAcceleration-", rep10,ignore.case=TRUE)
rep12 <- gsub("fGravityAcc-", "FrequencyGravityAcceleration-", rep11,ignore.case=TRUE)
rep13 <- gsub("fBodyAccJerk-", "FrequencyBodyAccelerationJerkSignal-", rep12,ignore.case=TRUE)
rep14 <- gsub("fBodyGyro-", "FrequencyBodyAngularVelocity-", rep13,ignore.case=TRUE)
rep15 <- gsub("fBodyGyroJerk-", "FrequencyBodyAngularVelocityJerkSignal-", rep14,ignore.case=TRUE)
rep16 <- gsub("fBodyAccMag-", "FrequencyBodyAccelerationMagnitude-", rep15,ignore.case=TRUE)
rep17 <- gsub("fGravityAccMag-", "FrequencyGravityAccelerationMagnitude -", rep16,ignore.case=TRUE)
rep18 <- gsub("fBodyAccJerkMag-", "FrequencyBodyAccelerationJerkSignalMagnitude-", rep17,ignore.case=TRUE)
rep19 <- gsub("fBodyGyroMag-", "FrequencyBodyAngularVelocityMagnitude-", rep18,ignore.case=TRUE)
rep20 <- gsub("fBodyGyroJerkMag-", "FrequencyBodyAngularVelocityJerkSignalMagnitude-", rep19,ignore.case=TRUE)
rep21 <- gsub("fBodyBodyAccJerkMag-", "FrequencyBodyBodyAccelerationJerkSignalMagnitude-", rep20,ignore.case=TRUE)
rep22 <- gsub("fBodyBodyGyroMag-", "FrequencyBodyBodyAngularVelocityMagnitude-", rep21,ignore.case=TRUE)
rep23 <- gsub("fBodyBodyGyroJerkMag-", "FrequencyBodyBodyAngularvelocityJerkSignalMagnitude-", rep22,ignore.case=TRUE)
rep23[83] <- "AngleBetweenTimeBodyAcceleration-MeanAndGravity"                                                 
rep23[84] <- "AngleBetweenTimeBodyAccelerationJerkSignal-MeanAndGravityMean"                                        
rep23[85] <- "AngleBetweenTimeBodyAngularVelocityAndGravityMean"                                            
rep23[86] <- "AngleBetweenTimeBodyAngularVelocityJerkSignal-Mean andGravityMean"                                        
rep23[87] <- "AngleBetweenXAndGravityMean"                                                        
rep23[88] <- "AngleBetweenYAndGravityMean"                                                        
rep23[89] <- "AngleBetweenZAndGravityMean" 

rep24 <- gsub("mean", "Mean", rep23,ignore.case=TRUE)
rep25 <- gsub("std", "StandardDeviation", rep24,ignore.case=TRUE)
rep25[1] <- "Data_type"

names(XY_subject_rel) <- rep25

#Create an independent tidy data set with the average of each variable for each activity and each subject.

tidy_data<-ddply(XY_subject_rel,.(Data_type,Subject,Activity),numcolwise(mean))
write.table(tidy_data, "./data/tidy_data.txt", col.names=TRUE, row.names=FALSE,sep=",", quote=FALSE)
















