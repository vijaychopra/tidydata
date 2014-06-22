#Cleaned up wearable computing data - Variables and Data

======================================================================
#####Human Activity Recognition Using Smartphones Dataset - Cleaned up data
#####Version 1.0
======================================================================

The original experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

######The dataset includes the following files:
=========================================

- 'README.md'
- 'CodeBook.md'


######For each record it is provided:
=======================================================================

[1] Data_type - Is this for a Suject in Test or Training?                                                             
[2] Subject - The id of the Subject - It has 30 possible values.                                                               
[3] Activity - The activity type. It has 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

While the names of the columns are exapanded version of the original columns,  they capture mean of the original data. The variable names with prefix 'Time' capture time domain signals. The variable names with prefix 'Frequency' capture frequency domain signals. The suffix XYZ denotes 3-axial signals in the X, Y and Z directions.

[4] TimeBodyAcceleration-Mean()-X                                           
[5] TimeBodyAcceleration-Mean()-Y                                          
[6] TimeBodyAcceleration-Mean()-Z                                          
[7] TimeBodyAcceleration-StandardDeviation()-X                             
[8] TimeBodyAcceleration-StandardDeviation()-Y                             
[9] TimeBodyAcceleration-StandardDeviation()-Z                             
[10] TimeGravityAcceleration-Mean()-X                                       
[11] TimeGravityAcceleration-Mean()-Y                                       
[12] TimeGravityAcceleration-Mean()-Z                                       
[13] TimeGravityAcceleration-StandardDeviation()-X                          
[14] TimeGravityAcceleration-StandardDeviation()-Y                          
[15] TimeGravityAcceleration-StandardDeviation()-Z                          
[16] TimeBodyAccelerationJerkSignal-Mean()-X                                
[17] TimeBodyAccelerationJerkSignal-Mean()-Y                                
[18] TimeBodyAccelerationJerkSignal-Mean()-Z                                
[19] TimeBodyAccelerationJerkSignal-StandardDeviation()-X                   
[20] TimeBodyAccelerationJerkSignal-StandardDeviation()-Y                   
[21] TimeBodyAccelerationJerkSignal-StandardDeviation()-Z                   
[22] TimeBodyAngularVelocity-Mean()-X                                       
[23] TimeBodyAngularVelocity-Mean()-Y                                       
[24] TimeBodyAngularVelocity-Mean()-Z                                       
[25] TimeBodyAngularVelocity-StandardDeviation()-X                          
[26] TimeBodyAngularVelocity-StandardDeviation()-Y                          
[27] TimeBodyAngularVelocity-StandardDeviation()-Z                          
[28] TimeBodyAngularVelocityJerkSignal-Mean()-X                             
[29] TimeBodyAngularVelocityJerkSignal-Mean()-Y                             
[30] TimeBodyAngularVelocityJerkSignal-Mean()-Z                             
[31] TimeBodyAngularVelocityJerkSignal-StandardDeviation()-X                
[32] TimeBodyAngularVelocityJerkSignal-StandardDeviation()-Y                
[33] TimeBodyAngularVelocityJerkSignal-StandardDeviation()-Z                
[34] TimeBodyAccelerationMagnitude-Mean()                                   
[35] TimeBodyAccelerationMagnitude-StandardDeviation()                      
[36] TimeGravityAccelerationMagnitude-Mean()                                
[37] TimeGravityAccelerationMagnitude-StandardDeviation()                   
[38] TimeBodyAccelerationJerkSignalMagnitude-Mean()                         
[39] TimeBodyAccelerationJerkSignalMagnitude-StandardDeviation()            
[40] TimeBodyAngularVelocityMagnitude-Mean()                                
[41] TimeBodyAngularVelocityMagnitude-StandardDeviation()                   
[42] TimeBodyAngularVelocityJerkSignalMagnitude-Mean()                      
[43] TimeBodyAngularVelocityJerkSignalMagnitude-StandardDeviation()         
[44] FrequencyBodyAcceleration-Mean()-X                                     
[45] FrequencyBodyAcceleration-Mean()-Y                                     
[46] FrequencyBodyAcceleration-Mean()-Z                                     
[47] FrequencyBodyAcceleration-StandardDeviation()-X                        
[48] FrequencyBodyAcceleration-StandardDeviation()-Y                        
[49] FrequencyBodyAcceleration-StandardDeviation()-Z                        
[50] FrequencyBodyAcceleration-MeanFreq()-X                                 
[51] FrequencyBodyAcceleration-MeanFreq()-Y                                 
[52] FrequencyBodyAcceleration-MeanFreq()-Z                                 
[53] FrequencyBodyAccelerationJerkSignal-Mean()-X                           
[54] FrequencyBodyAccelerationJerkSignal-Mean()-Y                           
[55] FrequencyBodyAccelerationJerkSignal-Mean()-Z                           
[56] FrequencyBodyAccelerationJerkSignal-StandardDeviation()-X              
[57] FrequencyBodyAccelerationJerkSignal-StandardDeviation()-Y              
[58] FrequencyBodyAccelerationJerkSignal-StandardDeviation()-Z              
[59] FrequencyBodyAccelerationJerkSignal-MeanFreq()-X                       
[60] FrequencyBodyAccelerationJerkSignal-MeanFreq()-Y                       
[61] FrequencyBodyAccelerationJerkSignal-MeanFreq()-Z                       
[62] FrequencyBodyAngularVelocity-Mean()-X                                  
[63] FrequencyBodyAngularVelocity-Mean()-Y                                  
[64] FrequencyBodyAngularVelocity-Mean()-Z                                  
[65] FrequencyBodyAngularVelocity-StandardDeviation()-X                     
[66] FrequencyBodyAngularVelocity-StandardDeviation()-Y                     
[67] FrequencyBodyAngularVelocity-StandardDeviation()-Z                     
[68] FrequencyBodyAngularVelocity-MeanFreq()-X                              
[69] FrequencyBodyAngularVelocity-MeanFreq()-Y                              
[70] FrequencyBodyAngularVelocity-MeanFreq()-Z                              
[71] FrequencyBodyAccelerationMagnitude-Mean()                              
[72] FrequencyBodyAccelerationMagnitude-StandardDeviation()                 
[73] FrequencyBodyAccelerationMagnitude-MeanFreq()                          
[74] FrequencyBodyBodyAccelerationJerkSignalMagnitude-Mean()                
[75] FrequencyBodyBodyAccelerationJerkSignalMagnitude-StandardDeviation()   
[76] FrequencyBodyBodyAccelerationJerkSignalMagnitude-MeanFreq()            
[77] FrequencyBodyBodyAngularVelocityMagnitude-Mean()                       
[78] FrequencyBodyBodyAngularVelocityMagnitude-StandardDeviation()          
[79] FrequencyBodyBodyAngularVelocityMagnitude-MeanFreq()                   
[80] FrequencyBodyBodyAngularvelocityJerkSignalMagnitude-Mean()             
[81] FrequencyBodyBodyAngularvelocityJerkSignalMagnitude-StandardDeviation()
[82] FrequencyBodyBodyAngularvelocityJerkSignalMagnitude-MeanFreq()         
[83] AngleBetweenTimeBodyAcceleration-MeanAndGravity                        
[84] AngleBetweenTimeBodyAccelerationJerkSignal-MeanAndGravityMean          
[85] AngleBetweenTimeBodyAngularVelocityAndGravityMean                      
[86] AngleBetweenTimeBodyAngularVelocityJerkSignal-Mean andGravityMean      
[87] AngleBetweenXAndGravityMean                                            
[88] AngleBetweenYAndGravityMean                                            
[89] AngleBetweenZAndGravityMean   


#Transformations performed - Cleaning up the wearable computing data

###Read the files about training
```
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
```

#####Read the file about the activity labels. It will be used later it to give descriptive activity names to the activities in the data set.
```
activity_labels <- read.table("./activity_labels.txt")
names(activity_labels)<- c("Training_label","Activity")
```
#####Read the file about the features. It will be used later to identify the column names.
```
features <- read.table("./features.txt")
features <- features[,2]
```

#####Use the features table to get column names of X_train
```
names(X_train) <- features
```
#####Merge X_train, Y_train and activity_labels tables

```
X_train_Y <- cbind(Y_train,X_train)
XY_train_subject <- cbind(subject_train, X_train_Y)
names(XY_train_subject)[1]<- paste("Subject")
names(XY_train_subject)[2]<- paste("Training_label")
XY_train_subject1 = merge(activity_labels,XY_train_subject,all=TRUE)
```

##### Add an additional column to identify this data as training data
```
XY_train_subject1$data_type <- c("train")
```
##Read the files about test
```
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
features <- features[,2]
```
#####Use the features table to get column names of X_test
```
names(X_test) <- features
```

#####Merge X_test, Y_test and activity_labels tables
```
X_test_Y <- cbind(Y_test,X_test)
XY_test_subject <- cbind(subject_test, X_test_Y)
names(XY_test_subject)[1]<- paste("Subject")
names(XY_test_subject)[2]<- paste("Training_label")
XY_test_subject1 = merge(activity_labels,XY_test_subject,all=TRUE)
```

##### Add an additional column to identify this data as test data
```
XY_test_subject1$data_type <- c("test")
```

#####Merge the datasets for train and test
```
XY_subject <- rbind(XY_train_subject1, XY_test_subject1)
```

#####Identifying the columns which have word "mean"
```
meancols <- grep("mean",names(XY_subject),ignore.case=TRUE,value=FALSE)
```

#####Identifying the columns which have word "std" (standard deviation)
```
stdcols <- grep("std",names(XY_subject),ignore.case=TRUE,value=FALSE)
```
#####Merging the list of columns for mean and standard deviation
```
reqcols <- sort(c(stdcols,meancols))
```

#####Adding the identity columns to identify a row
```
reqcols1<- c(565,3,2,reqcols)
```

#####Extract only the measurements on the mean and standard deviation for each measurement. 

```
XY_subject_rel <- XY_subject[,reqcols1]
```

###Label the data set with descriptive variable names
```
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
```

###### Assign the detailed names to the columns
```
names(XY_subject_rel) <- rep25
```
#####Create an independent tidy data set with the average of each variable for each activity and each subject.
```
tidy_data<-ddply(XY_subject_rel,.(Data_type,Subject,Activity),numcolwise(mean))
```
###Write the tidy data to a .csv file.
```
write.table(tidy_data, "./tidy_data.csv", col.names=TRUE, row.names=FALSE,sep=",", quote=FALSE)
```

###Notes: 
###======

#####For more information about the original dataset contact: activityrecognition@smartlab.ws

###License:
###========
#####The original dataset has been taken from the following publication [1] 

######[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
