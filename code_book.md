# Analyze the process

The program begins by reading the files containing the names of variables and filters out those that contain the term mean or std.

Then reads the test data and using the selected names creates a new data structure called clean_test_data .

Proceed in a  similar manner to the training data and creates a data structure named clean_train_data .

Finally, joins the data from clean_test_data and clean_train_data in a new structure organized by lines which are the Cartesian product subject_id by activity_labels.

# Output Columns

The first two are:
subject_id (1 to 30) and activity_labels ("LAYING" "SITTING" "STANDING" "WALKING"  "WALKING_DOWNSTAIRS"  "WALKING_UPSTAIRS")


The folowing 79 variables are the mean values of the variables in study:

 "tBodyAcc-mean()-X"     
 
 "tBodyAcc-mean()-Y"   
 
 "tBodyAcc-mean()-Z"   
 
 "tBodyAcc-std()-X"   
 
 "tBodyAcc-std()-Y"    
 
 "tBodyAcc-std()-Z"     
 
 "tGravityAcc-mean()-X"   
 
 "tGravityAcc-mean()-Y"  
 
 "tGravityAcc-mean()-Z"   
 
 "tGravityAcc-std()-X" 
 
 "tGravityAcc-std()-Y"   
 
 "tGravityAcc-std()-Z"  
 
 "tBodyAccJerk-mean()-X"  
 
 "tBodyAccJerk-mean()-Y"    
 
 "tBodyAccJerk-mean()-Z"   
 
 "tBodyAccJerk-std()-X"  
 
 "tBodyAccJerk-std()-Y"  
 
 "tBodyAccJerk-std()-Z"   
 
 "tBodyGyro-mean()-X"  
 
 "tBodyGyro-mean()-Y"  
 
 "tBodyGyro-mean()-Z"  
 
 "tBodyGyro-std()-X" 
 
 "tBodyGyro-std()-Y"  
 
 "tBodyGyro-std()-Z" 
 
 "tBodyGyroJerk-mean()-X"  
 
 "tBodyGyroJerk-mean()-Y"  
 
 "tBodyGyroJerk-mean()-Z"  
 
 "tBodyGyroJerk-std()-X"  
 
 "tBodyGyroJerk-std()-Y"  
 
 "tBodyGyroJerk-std()-Z" 
 
 "tBodyAccMag-mean()"  
 
 "tBodyAccMag-std()" 
 
 "tGravityAccMag-mean()"  
 
 "tGravityAccMag-std()" 
 
 "tBodyAccJerkMag-mean()"   
 
 "tBodyAccJerkMag-std()"  
 
 "tBodyGyroMag-mean()"   
 
 "tBodyGyroMag-std()"   
 
 "tBodyGyroJerkMag-mean()"  
 
 "tBodyGyroJerkMag-std()"  
 
 "fBodyAcc-mean()-X"   
 
 "fBodyAcc-mean()-Y"   
 
 "fBodyAcc-mean()-Z"    
 
 "fBodyAcc-std()-X"  
 
 "fBodyAcc-std()-Y"   
 
 "fBodyAcc-std()-Z"  
 
 "fBodyAcc-meanFreq()-X"  
 
 "fBodyAcc-meanFreq()-Y"  
 
 "fBodyAcc-meanFreq()-Z"  
 
 "fBodyAccJerk-mean()-X"  
 
 "fBodyAccJerk-mean()-Y" 
 
 "fBodyAccJerk-mean()-Z"  
 
 "fBodyAccJerk-std()-X"  
 
 "fBodyAccJerk-std()-Y"   
 
 "fBodyAccJerk-std()-Z"   
 
 "fBodyAccJerk-meanFreq()-X"  
 
 "fBodyAccJerk-meanFreq()-Y"   
 
 "fBodyAccJerk-meanFreq()-Z" 
 
 "fBodyGyro-mean()-X"   
 
 "fBodyGyro-mean()-Y"  
 
 "fBodyGyro-mean()-Z"
 
 "fBodyGyro-std()-X"  
 
 "fBodyGyro-std()-Y"  
 
 "fBodyGyro-std()-Z"  
 
 "fBodyGyro-meanFreq()-X"    
 
 "fBodyGyro-meanFreq()-Y"  
 
 "fBodyGyro-meanFreq()-Z" 
 
 "fBodyAccMag-mean()"   
 
 "fBodyAccMag-std()"   
 
 "fBodyAccMag-meanFreq()"
 
 "fBodyBodyAccJerkMag-mean()"
 
 "fBodyBodyAccJerkMag-std()"
 
 "fBodyBodyAccJerkMag-meanFreq()" 
 
 "fBodyBodyGyroMag-mean()" 
 
 "fBodyBodyGyroMag-std()"  
 
 "fBodyBodyGyroMag-meanFreq()"  
 
 "fBodyBodyGyroJerkMag-mean()"  
 
 "fBodyBodyGyroJerkMag-std()" 
 
 "fBodyBodyGyroJerkMag-meanFreq()"
 
 
 Their detailed description can be found in the features_info-txt of the data zip file.
 
