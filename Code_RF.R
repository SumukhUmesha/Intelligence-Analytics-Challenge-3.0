setwd("C:/Users/Eeshpaul/Downloads/IAS-_Intelligence_Analytics_Challenge_3.0_-_Let%27s_Begin")
# install.packages("ggplot2")
# library(ggplot2)

#Reading the dataset
data1<- read.csv("Training Dataset.csv")
data2<-data1[,-1]

library(randomForest)

##Creating subset for training prediction
data1_2<- data1[data1$Weekly.Earnings == 0,]
data1_2<-data1_2[,-1]

cutoff = round(0.2*nrow(data1_2))
cutoff
d_part1<- data1_2[1:5538,]
d_part2<- data1_2[5539:11076,]
d_part3<- data1_2[11077:16614,]
d_part4<- data1_2[16615:22152,]
d_part5<- data1_2[22153:27688,]

t1<- rbind(d_part1,d_part2,d_part3,d_part4)
t2<- rbind(d_part2,d_part3,d_part4,d_part5)
t3<- rbind(d_part1,d_part3,d_part4,d_part5)
t4<- rbind(d_part1,d_part2,d_part4,d_part5)
t5<- rbind(d_part1,d_part2,d_part3,d_part5)

v1<-d_part5
v2<-d_part1
v3<-d_part2
v4<-d_part3
v5<-d_part4



t1_1<- t1[t1$Education.Level == '9th grade',]
t1_2<- t1[t1$Education.Level == '10th grade',]
t1_3<- t1[t1$Education.Level == '11th grade',]
t1_4<- t1[t1$Education.Level == '12th grade',]
t1_5<- t1[t1$Education.Level == 'High School',]
t1_6<- t1[t1$Education.Level == 'Some College',]
t1_7<- t1[t1$Education.Level == 'Associate Degree',]
t1_8<- t1[t1$Education.Level == 'Bachelor',]
t1_9<- t1[t1$Education.Level == 'Master',]
t2_10<- t1[(t1$Education.Level == 'Prof. Degree')|(t1$Education.Level == 'Doctoral Degree'),]

v1_1<- v1[v1$Education.Level == '9th grade',]
v1_2<- v1[v1$Education.Level == '10th grade',]
v1_3<- v1[v1$Education.Level == '11th grade',]
v1_4<- v1[v1$Education.Level == '12th grade',]
v1_5<- v1[v1$Education.Level == 'High School',]
v1_6<- v1[v1$Education.Level == 'Some College',]
v1_7<- v1[v1$Education.Level == 'Associate Degree',]
v1_8<- v1[v1$Education.Level == 'Bachelor',]
v1_9<- v1[v1$Education.Level == 'Master',]
v1_10<- v1[(v1$Education.Level == 'Prof. Degree')|(v1$Education.Level == 'Doctoral Degree'),]




t2_1<- t2[t2$Education.Level == '9th grade',]
t2_2<- t2[t2$Education.Level == '10th grade',]
t2_3<- t2[t2$Education.Level == '11th grade',]
t2_4<- t2[t2$Education.Level == '12th grade',]
t2_5<- t2[t2$Education.Level == 'High School',]
t2_6<- t2[t2$Education.Level == 'Some College',]
t2_7<- t2[t2$Education.Level == 'Associate Degree',]
t2_8<- t2[t2$Education.Level == 'Bachelor',]
t2_9<- t2[t2$Education.Level == 'Master',]
t2_10<- t2[(t2$Education.Level == 'Prof. Degree')|(t2$Education.Level == 'Doctoral Degree'),]

v2_1<- v2[v2$Education.Level == '9th grade',]
v2_2<- v2[v2$Education.Level == '10th grade',]
v2_3<- v2[v2$Education.Level == '11th grade',]
v2_4<- v2[v2$Education.Level == '12th grade',]
v2_5<- v2[v2$Education.Level == 'High School',]
v2_6<- v2[v2$Education.Level == 'Some College',]
v2_7<- v2[v2$Education.Level == 'Associate Degree',]
v2_8<- v2[v2$Education.Level == 'Bachelor',]
v2_9<- v2[v2$Education.Level == 'Master',]
v2_10<- v2[(v2$Education.Level == 'Prof. Degree')|(v2$Education.Level == 'Doctoral Degree'),]

t3_1<- t3[t3$Education.Level == '9th grade',]
t3_2<- t3[t3$Education.Level == '10th grade',]
t3_3<- t3[t3$Education.Level == '11th grade',]
t3_4<- t3[t3$Education.Level == '12th grade',]
t3_5<- t3[t3$Education.Level == 'High School',]
t3_6<- t3[t3$Education.Level == 'Some College',]
t3_7<- t3[t3$Education.Level == 'Associate Degree',]
t3_8<- t3[t3$Education.Level == 'Bachelor',]
t3_9<- t3[t3$Education.Level == 'Master',]
t3_10<- t3[(t3$Education.Level == 'Prof. Degree')|(t3$Education.Level == 'Doctoral Degree'),]

v3_1<- v3[v3$Education.Level == '9th grade',]
v3_2<- v3[v3$Education.Level == '10th grade',]
v3_3<- v3[v3$Education.Level == '11th grade',]
v3_4<- v3[v3$Education.Level == '12th grade',]
v3_5<- v3[v3$Education.Level == 'High School',]
v3_6<- v3[v3$Education.Level == 'Some College',]
v3_7<- v3[v3$Education.Level == 'Associate Degree',]
v3_8<- v3[v3$Education.Level == 'Bachelor',]
v3_9<- v3[v3$Education.Level == 'Master',]
v3_10<- v3[(v3$Education.Level == 'Prof. Degree')|(v3$Education.Level == 'Doctoral Degree'),]


t4_1<- t4[t4$Education.Level == '9th grade',]
t4_2<- t4[t4$Education.Level == '10th grade',]
t4_3<- t4[t4$Education.Level == '11th grade',]
t4_4<- t4[t4$Education.Level == '12th grade',]
t4_5<- t4[t4$Education.Level == 'High School',]
t4_6<- t4[t4$Education.Level == 'Some College',]
t4_7<- t4[t4$Education.Level == 'Associate Degree',]
t4_8<- t4[t4$Education.Level == 'Bachelor',]
t4_9<- t4[t4$Education.Level == 'Master',]
t4_10<- t4[(t4$Education.Level == 'Prof. Degree')|(t4$Education.Level == 'Doctoral Degree'),]

v4_1<- v4[v4$Education.Level == '9th grade',]
v4_2<- v4[v4$Education.Level == '10th grade',]
v4_3<- v4[v4$Education.Level == '11th grade',]
v4_4<- v4[v4$Education.Level == '12th grade',]
v4_5<- v4[v4$Education.Level == 'High School',]
v4_6<- v4[v4$Education.Level == 'Some College',]
v4_7<- v4[v4$Education.Level == 'Associate Degree',]
v4_8<- v4[v4$Education.Level == 'Bachelor',]
v4_9<- v4[v4$Education.Level == 'Master',]
v4_10<- v4[(v4$Education.Level == 'Prof. Degree')|(v4$Education.Level == 'Doctoral Degree'),]

t5_1<- t5[t5$Education.Level == '9th grade',]
t5_2<- t5[t5$Education.Level == '10th grade',]
t5_3<- t5[t5$Education.Level == '11th grade',]
t5_4<- t5[t5$Education.Level == '12th grade',]
t5_5<- t5[t5$Education.Level == 'High School',]
t5_6<- t5[t5$Education.Level == 'Some College',]
t5_7<- t5[t5$Education.Level == 'Associate Degree',]
t5_8<- t5[t5$Education.Level == 'Bachelor',]
t5_9<- t5[t5$Education.Level == 'Master',]
t5_10<- t5[(t5$Education.Level == 'Prof. Degree')|(t5$Education.Level == 'Doctoral Degree'),]

v5_1<- v5[v5$Education.Level == '9th grade',]
v5_2<- v5[v5$Education.Level == '10th grade',]
v5_3<- v5[v5$Education.Level == '11th grade',]
v5_4<- v5[v5$Education.Level == '12th grade',]
v5_5<- v5[v5$Education.Level == 'High School',]
v5_6<- v5[v5$Education.Level == 'Some College',]
v5_7<- v5[v5$Education.Level == 'Associate Degree',]
v5_8<- v5[v5$Education.Level == 'Bachelor',]
v5_9<- v5[v5$Education.Level == 'Master',]
v5_10<- v5[(v5$Education.Level == 'Prof. Degree')|(v5$Education.Level == 'Doctoral Degree'),]


####Random forest predictions
# for segment 1
cutoff = round(0.9*nrow(data_edu1))
train1<- data_edu1[1:cutoff,]
val1<-data_edu1[-(1:cutoff),]

rf_1 <- randomForest(Employment.Status~., data=train1,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_1,train1)
p2<- predict(rf_1, val1)
train1_pred<-cbind(train1,p1)
val1_pred<-cbind(val1,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val1_pred$comp <- ifelse(val1_pred$Employment.Status == val1_pred$p2, 1, 0)
(sum(val1_pred$comp)/length(val1_pred$comp))*100

train1_pred$comp <- ifelse(train1_pred$Employment.Status == train1_pred$p1, 1, 0)
(sum(train1_pred$comp)/length(train1_pred$comp))*100


# for segment 2
cutoff = round(0.9*nrow(data_edu2))
train2<- data_edu2[1:cutoff,]
val2<-data_edu2[-(1:cutoff),]

rf_2 <- randomForest(Employment.Status~., data=train2,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_2,train2)
p2<- predict(rf_2, val2)
train2_pred<-cbind(train2,p1)
val2_pred<-cbind(val2,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val2_pred$comp <- ifelse(val2_pred$Employment.Status == val2_pred$p2, 1, 0)
(sum(val2_pred$comp)/length(val2_pred$comp))*100

train2_pred$comp <- ifelse(train2_pred$Employment.Status == train2_pred$p1, 1, 0)
(sum(train2_pred$comp)/length(train2_pred$comp))*100




# for segment 3
cutoff = round(0.9*nrow(data_edu3))
train3<- data_edu3[1:cutoff,]
val3<-data_edu3[-(1:cutoff),]

rf_3 <- randomForest(Employment.Status~., data=train3,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_3,train3)
p2<- predict(rf_3, val3)
train3_pred<-cbind(train3,p1)
val3_pred<-cbind(val3,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val3_pred$comp <- ifelse(val3_pred$Employment.Status == val3_pred$p2, 1, 0)
(sum(val3_pred$comp)/length(val3_pred$comp))*100

train3_pred$comp <- ifelse(train3_pred$Employment.Status == train3_pred$p1, 1, 0)
(sum(train3_pred$comp)/length(train3_pred$comp))*100


# for segment 4
cutoff = round(0.9*nrow(data_edu4))
train4<- data_edu4[1:cutoff,]
val4<-data_edu4[-(1:cutoff),]

rf_4 <- randomForest(Employment.Status~., data=train4,
                     ntree = 100,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_4,train4)
p2<- predict(rf_4, val4)
train4_pred<-cbind(train4,p1)
val4_pred<-cbind(val4,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val4_pred$comp <- ifelse(val4_pred$Employment.Status == val4_pred$p2, 1, 0)
(sum(val4_pred$comp)/length(val4_pred$comp))*100

train4_pred$comp <- ifelse(train4_pred$Employment.Status == train4_pred$p1, 1, 0)
(sum(train4_pred$comp)/length(train4_pred$comp))*100


# for segment 5
cutoff = round(0.9*nrow(data_edu5))
train5<- data_edu5[1:cutoff,]
val5<-data_edu5[-(1:cutoff),]

rf_5 <- randomForest(Employment.Status~., data=train5,
                     ntree = 300,
                     mtry = 8,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_5,train5)
p2<- predict(rf_5, val5)
train5_pred<-cbind(train5,p1)
val5_pred<-cbind(val5,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val5_pred$comp <- ifelse(val5_pred$Employment.Status == val5_pred$p2, 1, 0)
(sum(val5_pred$comp)/length(val5_pred$comp))*100

train5_pred$comp <- ifelse(train5_pred$Employment.Status == train5_pred$p1, 1, 0)
(sum(train5_pred$comp)/length(train5_pred$comp))*100



# for segment 6
cutoff = round(0.9*nrow(data_edu6))
train6<- data_edu6[1:cutoff,]
val6<-data_edu6[-(1:cutoff),]

rf_6 <- randomForest(Employment.Status~., data=train6,
                     ntree = 300,
                     mtry = 8,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_6,train6)
p2<- predict(rf_6, val6)
train6_pred<-cbind(train6,p1)
val6_pred<-cbind(val6,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val6_pred$comp <- ifelse(val6_pred$Employment.Status == val6_pred$p2, 1, 0)
(sum(val6_pred$comp)/length(val6_pred$comp))*100

train6_pred$comp <- ifelse(train6_pred$Employment.Status == train6_pred$p1, 1, 0)
(sum(train6_pred$comp)/length(train6_pred$comp))*100


# for segment 7
cutoff = round(0.9*nrow(data_edu7))
train7<- data_edu7[1:cutoff,]
val7<-data_edu7[-(1:cutoff),]

rf_7 <- randomForest(Employment.Status~., data=train7,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_7,train7)
p2<- predict(rf_7, val7)
train7_pred<-cbind(train7,p1)
val7_pred<-cbind(val7,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val7_pred$comp <- ifelse(val7_pred$Employment.Status == val7_pred$p2, 1, 0)
(sum(val7_pred$comp)/length(val7_pred$comp))*100

train7_pred$comp <- ifelse(train7_pred$Employment.Status == train7_pred$p1, 1, 0)
(sum(train7_pred$comp)/length(train7_pred$comp))*100



# for segment 8
cutoff = round(0.9*nrow(data_edu8))
train8<- data_edu8[1:cutoff,]
val8<-data_edu8[-(1:cutoff),]

rf_8 <- randomForest(Employment.Status~., data=train8,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_8,train8)
p2<- predict(rf_8, val8)
train8_pred<-cbind(train8,p1)
val8_pred<-cbind(val8,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val8_pred$comp <- ifelse(val8_pred$Employment.Status == val8_pred$p2, 1, 0)
(sum(val8_pred$comp)/length(val8_pred$comp))*100

train8_pred$comp <- ifelse(train8_pred$Employment.Status == train8_pred$p1, 1, 0)
(sum(train8_pred$comp)/length(train8_pred$comp))*100


# for segment 9
cutoff = round(0.9*nrow(data_edu9))
train9<- data_edu9[1:cutoff,]
val9<-data_edu9[-(1:cutoff),]

rf_9 <- randomForest(Employment.Status~., data=train9,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_9,train9)
p2<- predict(rf_9, val9)
train9_pred<-cbind(train9,p1)
val9_pred<-cbind(val9,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val9_pred$comp <- ifelse(val9_pred$Employment.Status == val9_pred$p2, 1, 0)
(sum(val9_pred$comp)/length(val9_pred$comp))*100

train9_pred$comp <- ifelse(train9_pred$Employment.Status == train9_pred$p1, 1, 0)
(sum(train9_pred$comp)/length(train9_pred$comp))*100


# for segment 10
cutoff = round(0.9*nrow(data_edu10))
train10<- data_edu10[1:cutoff,]
val10<-data_edu10[-(1:cutoff),]

rf_10 <- randomForest(Employment.Status~., data=train10,
                      ntree = 300,
                      mtry = 5,
                      importance = TRUE,
                      proximity = TRUE)

p1<-predict(rf_10,train10)
p2<- predict(rf_10, val10)
train10_pred<-cbind(train10,p1)
val10_pred<-cbind(val10,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val10_pred$comp <- ifelse(val10_pred$Employment.Status == val10_pred$p2, 1, 0)
(sum(val10_pred$comp)/length(val10_pred$comp))*100

train10_pred$comp <- ifelse(train10_pred$Employment.Status == train10_pred$p1, 1, 0)
(sum(train10_pred$comp)/length(train10_pred$comp))*100


##getting the results for the non prediction set for 
##Getting validation dataset
data1_3<- data1[data1$Weekly.Earnings > 0,]

20/311
##creating dataset split for validation and test and train
cutoff = round(0.9*nrow(data1_3))
train11<- data1_3[1:cutoff,]
val11<-data1_3[-(1:cutoff),]

#Adding the prediction column 
train11_pred<-cbind(train11,'Employed')
val11_pred<-cbind(val11,'Employed')

colnames(train11_pred)[26]<- 'p1'
colnames(val11_pred)[26]<- 'p2'
##no need to run from here
train11_pred<-cbind(train11_pred,1)
val11_pred<-cbind(val11_pred,1)

colnames(train11_pred)[27]<- 'comp'
colnames(val11_pred)[27]<- 'comp'

## till here
##Convdert p2 column in character. 
val11_pred$comp<- as.numeric(as.character(val11_pred$comp))

val11_pred<- val11_pred[,-1]

val_final<- rbind(val1_pred,val2_pred,val3_pred,val4_pred,val5_pred,val6_pred,val7_pred,
                  val8_pred,val9_pred,val10_pred)
val_final_2<- rbind(val_final,val11_pred)

((sum(val_final$comp))/(length(val_final$comp)))*100
((sum(val_final_2$comp))/(length(val_final_2$comp)))*100
2425

# use confusion matrix
confusionMatrix(val_final_2$p2,val_final_2$Employment.Status)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7451                  2          2
# Not in labor force       61               2129        245
# Unemployed                7                 58         78
# 
# Overall Statistics
# 
# Accuracy : 0.9626          
# 95% CI : (0.9587, 0.9662)
# No Information Rate : 0.7494          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.9041          
# Mcnemar's Test P-Value : < 2.2e-16       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9910                    0.9726          0.240000
# Specificity                   0.9984                    0.9610          0.993304
# Pos Pred Value                0.9995                    0.8743          0.545455
# Neg Pred Value                0.9736                    0.9921          0.975025
# Prevalence                    0.7494                    0.2182          0.032393
# Detection Rate                0.7426                    0.2122          0.007774
# Detection Prevalence          0.7430                    0.2427          0.014253
# Balanced Accuracy             0.9947                    0.9668          0.616652
# > 
# 

plot(rf_1)


hist(treesize(rf_4))



tuneRF(train1_pred[,27],train1_pred[,27],
       stepFactor = 0.5,
       plot= TRUE,
       ntreeTry = 300, 
       trace = TRUE,
       improve = 0.05)

#Getting Variablea importance
varImpPlot(rf_1,sort = TRUE, n.var= 10)
varImpPlot(rf_2,sort = TRUE, n.var= 10)
varImpPlot(rf_3,sort = TRUE, n.var= 10)
varImpPlot(rf_4,sort = TRUE, n.var= 10)
varImpPlot(rf_5,sort = TRUE, n.var= 10)
varImpPlot(rf_6,sort = TRUE, n.var= 10)
varImpPlot(rf_7,sort = TRUE, n.var= 10)
varImpPlot(rf_8,sort = TRUE, n.var= 10)
varImpPlot(rf_9,sort = TRUE, n.var= 10)
varImpPlot(rf_10,sort = TRUE, n.var= 10)


### RUnning Random forest models on given subsets for cross validation

# for segment 1
cutoff = round(0.2*nrow(data_edu1))
train1<- data_edu1[1:cutoff,]
val1<-data_edu1[-(1:cutoff),]

rf_1_1 <- rf(Employment.Status~., data= t1_1,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)


  

rf.crossValidation(rf_1, train1, p = 0.2, n = 5, seed = NULL, plot = TRUE,
                   ...)

p1<-predict(rf_1,train1)
p2<- predict(rf_1, val1)
train1_pred<-cbind(train1,p1)
val1_pred<-cbind(val1,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val1_pred$comp <- ifelse(val1_pred$Employment.Status == val1_pred$p2, 1, 0)
(sum(val1_pred$comp)/length(val1_pred$comp))*100

train1_pred$comp <- ifelse(train1_pred$Employment.Status == train1_pred$p1, 1, 0)
(sum(train1_pred$comp)/length(train1_pred$comp))*100


# for segment 2
cutoff = round(0.9*nrow(data_edu2))
train2<- data_edu2[1:cutoff,]
val2<-data_edu2[-(1:cutoff),]

rf_2 <- randomForest(Employment.Status~., data=train2,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_2,train2)
p2<- predict(rf_2, val2)
train2_pred<-cbind(train2,p1)
val2_pred<-cbind(val2,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val2_pred$comp <- ifelse(val2_pred$Employment.Status == val2_pred$p2, 1, 0)
(sum(val2_pred$comp)/length(val2_pred$comp))*100

train2_pred$comp <- ifelse(train2_pred$Employment.Status == train2_pred$p1, 1, 0)
(sum(train2_pred$comp)/length(train2_pred$comp))*100




# for segment 3
cutoff = round(0.9*nrow(data_edu3))
train3<- data_edu3[1:cutoff,]
val3<-data_edu3[-(1:cutoff),]

rf_3 <- randomForest(Employment.Status~., data=train3,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_3,train3)
p2<- predict(rf_3, val3)
train3_pred<-cbind(train3,p1)
val3_pred<-cbind(val3,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val3_pred$comp <- ifelse(val3_pred$Employment.Status == val3_pred$p2, 1, 0)
(sum(val3_pred$comp)/length(val3_pred$comp))*100

train3_pred$comp <- ifelse(train3_pred$Employment.Status == train3_pred$p1, 1, 0)
(sum(train3_pred$comp)/length(train3_pred$comp))*100


# for segment 4
cutoff = round(0.9*nrow(data_edu4))
train4<- data_edu4[1:cutoff,]
val4<-data_edu4[-(1:cutoff),]

rf_4 <- randomForest(Employment.Status~., data=train4,
                     ntree = 100,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_4,train4)
p2<- predict(rf_4, val4)
train4_pred<-cbind(train4,p1)
val4_pred<-cbind(val4,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val4_pred$comp <- ifelse(val4_pred$Employment.Status == val4_pred$p2, 1, 0)
(sum(val4_pred$comp)/length(val4_pred$comp))*100

train4_pred$comp <- ifelse(train4_pred$Employment.Status == train4_pred$p1, 1, 0)
(sum(train4_pred$comp)/length(train4_pred$comp))*100


# for segment 5
cutoff = round(0.9*nrow(data_edu5))
train5<- data_edu5[1:cutoff,]
val5<-data_edu5[-(1:cutoff),]

rf_5 <- randomForest(Employment.Status~., data=train5,
                     ntree = 300,
                     mtry = 8,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_5,train5)
p2<- predict(rf_5, val5)
train5_pred<-cbind(train5,p1)
val5_pred<-cbind(val5,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val5_pred$comp <- ifelse(val5_pred$Employment.Status == val5_pred$p2, 1, 0)
(sum(val5_pred$comp)/length(val5_pred$comp))*100

train5_pred$comp <- ifelse(train5_pred$Employment.Status == train5_pred$p1, 1, 0)
(sum(train5_pred$comp)/length(train5_pred$comp))*100



# for segment 6
cutoff = round(0.9*nrow(data_edu6))
train6<- data_edu6[1:cutoff,]
val6<-data_edu6[-(1:cutoff),]

rf_6 <- randomForest(Employment.Status~., data=train6,
                     ntree = 300,
                     mtry = 8,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_6,train6)
p2<- predict(rf_6, val6)
train6_pred<-cbind(train6,p1)
val6_pred<-cbind(val6,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val6_pred$comp <- ifelse(val6_pred$Employment.Status == val6_pred$p2, 1, 0)
(sum(val6_pred$comp)/length(val6_pred$comp))*100

train6_pred$comp <- ifelse(train6_pred$Employment.Status == train6_pred$p1, 1, 0)
(sum(train6_pred$comp)/length(train6_pred$comp))*100


# for segment 7
cutoff = round(0.9*nrow(data_edu7))
train7<- data_edu7[1:cutoff,]
val7<-data_edu7[-(1:cutoff),]

rf_7 <- randomForest(Employment.Status~., data=train7,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_7,train7)
p2<- predict(rf_7, val7)
train7_pred<-cbind(train7,p1)
val7_pred<-cbind(val7,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val7_pred$comp <- ifelse(val7_pred$Employment.Status == val7_pred$p2, 1, 0)
(sum(val7_pred$comp)/length(val7_pred$comp))*100

train7_pred$comp <- ifelse(train7_pred$Employment.Status == train7_pred$p1, 1, 0)
(sum(train7_pred$comp)/length(train7_pred$comp))*100



# for segment 8
cutoff = round(0.9*nrow(data_edu8))
train8<- data_edu8[1:cutoff,]
val8<-data_edu8[-(1:cutoff),]

rf_8 <- randomForest(Employment.Status~., data=train8,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_8,train8)
p2<- predict(rf_8, val8)
train8_pred<-cbind(train8,p1)
val8_pred<-cbind(val8,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val8_pred$comp <- ifelse(val8_pred$Employment.Status == val8_pred$p2, 1, 0)
(sum(val8_pred$comp)/length(val8_pred$comp))*100

train8_pred$comp <- ifelse(train8_pred$Employment.Status == train8_pred$p1, 1, 0)
(sum(train8_pred$comp)/length(train8_pred$comp))*100


# for segment 9
cutoff = round(0.9*nrow(data_edu9))
train9<- data_edu9[1:cutoff,]
val9<-data_edu9[-(1:cutoff),]

rf_9 <- randomForest(Employment.Status~., data=train9,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_9,train9)
p2<- predict(rf_9, val9)
train9_pred<-cbind(train9,p1)
val9_pred<-cbind(val9,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val9_pred$comp <- ifelse(val9_pred$Employment.Status == val9_pred$p2, 1, 0)
(sum(val9_pred$comp)/length(val9_pred$comp))*100

train9_pred$comp <- ifelse(train9_pred$Employment.Status == train9_pred$p1, 1, 0)
(sum(train9_pred$comp)/length(train9_pred$comp))*100


# for segment 10
cutoff = round(0.9*nrow(data_edu10))
train10<- data_edu10[1:cutoff,]
val10<-data_edu10[-(1:cutoff),]

rf_10 <- randomForest(Employment.Status~., data=train10,
                     ntree = 300,
                     mtry = 5,
                     importance = TRUE,
                     proximity = TRUE)

p1<-predict(rf_10,train10)
p2<- predict(rf_10, val10)
as.data.f
train10_pred<-cbind(train10,p1)
val10_pred<-cbind(val10,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')

val10_pred$comp <- ifelse(val10_pred$Employment.Status == val10_pred$p2, 1, 0)
(sum(val10_pred$comp)/length(val10_pred$comp))*100

train10_pred$comp <- ifelse(train10_pred$Employment.Status == train10_pred$p1, 1, 0)
(sum(train10_pred$comp)/length(train10_pred$comp))*100


##getting the results for the non prediction set for 
##Getting validation dataset

data1_3<- data1[data1$Weekly.Earnings > 0,]
##creating dataset split for validation and test and train
cutoff = round(0.9*nrow(data1_3))
train11<- data1_3[1:cutoff,]
val11<-data1_3[-(1:cutoff),]

#Adding the prediction column 
train11_pred<-cbind(train11,'Employed')
val11_pred<-cbind(val11,'Employed')

colnames(train11_pred)[26]<- 'p1'
colnames(val11_pred)[26]<- 'p2'
##no need to run from here
train11_pred<-cbind(train11_pred,1)
val11_pred<-cbind(val11_pred,1)

colnames(train11_pred)[27]<- 'comp'
colnames(val11_pred)[27]<- 'comp'

## till here
##Convdert p2 column in character. 
val11_pred$comp<- as.numeric(as.character(val11_pred$comp))

val11_pred<- val11_pred[,-1]

val_final<- rbind(val1_pred,val2_pred,val3_pred,val4_pred,val5_pred,val6_pred,val7_pred,
                  val8_pred,val9_pred,val10_pred)
val_final_2<- rbind(val_final,val11_pred)

((sum(val_final$comp))/(length(val_final$comp)))*100
((sum(val_final_2$comp))/(length(val_final_2$comp)))*100
2425

# use confusion matrix
confusionMatrix(val_final_2$p2,val_final_2$Employment.Status)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7451                  2          2
# Not in labor force       61               2129        245
# Unemployed                7                 58         78
# 
# Overall Statistics
# 
# Accuracy : 0.9626          
# 95% CI : (0.9587, 0.9662)
# No Information Rate : 0.7494          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.9041          
# Mcnemar's Test P-Value : < 2.2e-16       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9910                    0.9726          0.240000
# Specificity                   0.9984                    0.9610          0.993304
# Pos Pred Value                0.9995                    0.8743          0.545455
# Neg Pred Value                0.9736                    0.9921          0.975025
# Prevalence                    0.7494                    0.2182          0.032393
# Detection Rate                0.7426                    0.2122          0.007774
# Detection Prevalence          0.7430                    0.2427          0.014253
# Balanced Accuracy             0.9947                    0.9668          0.616652
# > 
# 

plot(rf_1)

#Gettinng a sample Tree size 

# calculating Accuracy for ANN with confusion matrix
confusionMatrix(val_ann1$predict,val_ann1$true)
# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7941                 42          7
# Not in labor force       80               2859        330
# Unemployed               14                242        181
# 
# Overall Statistics
# 
# Accuracy : 0.9389          
# 95% CI : (0.9344, 0.9431)
# No Information Rate : 0.687           
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8653          
# Mcnemar's Test P-Value : 4.183e-06       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9883                    0.9096           0.34942
# Specificity                   0.9866                    0.9521           0.97710
# Pos Pred Value                0.9939                    0.8746           0.41419
# Neg Pred Value                0.9746                    0.9663           0.97007
# Prevalence                    0.6870                    0.2687           0.04429
# Detection Rate                0.6790                    0.2444           0.01548
# Detection Prevalence          0.6831                    0.2795           0.03736
# Balanced Accuracy             0.9875                    0.9309           0.66326

confusionMatrix(val_ann2$predict,val_ann2$true)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7980                 37         11
# Not in labor force       87               2758        358
# Unemployed               16                306        168
# 
# Overall Statistics
# 
# Accuracy : 0.9305         
# 95% CI : (0.9257, 0.935)
# No Information Rate : 0.6896         
# P-Value [Acc > NIR] : < 2.2e-16      
# 
# Kappa : 0.8467         
# Mcnemar's Test P-Value : 1.43e-05       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9873                    0.8894           0.31285
# Specificity                   0.9868                    0.9484           0.97121
# Pos Pred Value                0.9940                    0.8611           0.34286
# Neg Pred Value                0.9721                    0.9597           0.96714
# Prevalence                    0.6896                    0.2646           0.04582
# Detection Rate                0.6808                    0.2353           0.01433
# Detection Prevalence          0.6849                    0.2733           0.04181
# Balanced Accuracy             0.9870                    0.9189           0.64203

confusionMatrix(val_ann3$predict,val_ann3$true)
# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7957                 56         17
# Not in labor force       65               2825        311
# Unemployed               14                265        164
# 
# Overall Statistics
# 
# Accuracy : 0.9376         
# 95% CI : (0.9331, 0.942)
# No Information Rate : 0.6884         
# P-Value [Acc > NIR] : <2e-16         
# 
# Kappa : 0.8617         
# Mcnemar's Test P-Value : 0.2007         
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9902                    0.8980           0.33333
# Specificity                   0.9799                    0.9559           0.97505
# Pos Pred Value                0.9909                    0.8825           0.37020
# Neg Pred Value                0.9783                    0.9621           0.97080
# Prevalence                    0.6884                    0.2695           0.04214
# Detection Rate                0.6816                    0.2420           0.01405
# Detection Prevalence          0.6879                    0.2742           0.03795
# Balanced Accuracy             0.9851                    0.9269           0.65419
# > 


confusionMatrix(val_ann4$predict,val_ann4$true)
# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7933                 34         19
# Not in labor force       97               2861        363
# Unemployed               15                242        173
# 
# Overall Statistics
# 
# Accuracy : 0.9344          
# 95% CI : (0.9298, 0.9388)
# No Information Rate : 0.6854          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8562          
# Mcnemar's Test P-Value : 6.974e-12       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9861                    0.9120           0.31171
# Specificity                   0.9856                    0.9465           0.97702
# Pos Pred Value                0.9934                    0.8615           0.40233
# Neg Pred Value                0.9701                    0.9672           0.96622
# Prevalence                    0.6854                    0.2673           0.04729
# Detection Rate                0.6759                    0.2438           0.01474
# Detection Prevalence          0.6804                    0.2830           0.03664
# Balanced Accuracy             0.9859                    0.9293           0.64436


confusionMatrix(val_ann5$predict,val_ann5$true)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7899                 45         11
# Not in labor force       78               2896        345
# Unemployed               19                263        182
# 
# Overall Statistics
# 
# Accuracy : 0.9352          
# 95% CI : (0.9306, 0.9396)
# No Information Rate : 0.6812          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8589          
# Mcnemar's Test P-Value : 6.38e-05        
#   
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9879                    0.9039           0.33829
# Specificity                   0.9850                    0.9504           0.97482
# Pos Pred Value                0.9930                    0.8726           0.39224
# Neg Pred Value                0.9744                    0.9634           0.96842
# Prevalence                    0.6812                    0.2730           0.04583
# Detection Rate                0.6729                    0.2467           0.01551
# Detection Prevalence          0.6777                    0.2828           0.03953
# Balanced Accuracy             0.9865                    0.9272           0.65656



hist(treesize(rf_7), main = "No. of nodes and depth", col = " dark blue")

#Getting Variablea importance graphh
varImpPlot(rf_1,sort = TRUE, n.var= 10)
varImpPlot(rf_2,sort = TRUE, n.var= 10)
varImpPlot(rf_3,sort = TRUE, n.var= 10)
varImpPlot(rf_4,sort = TRUE, n.var= 10)
varImpPlot(rf_5,sort = TRUE, n.var= 10)
varImpPlot(rf_6,sort = TRUE, n.var= 10)
varImpPlot(rf_7,sort = TRUE, n.var= 10)
varImpPlot(rf_8,sort = TRUE, n.var= 10)
varImpPlot(rf_9,sort = TRUE, n.var= 10)
varImpPlot(rf_10,sort = TRUE, n.var= 10)

##GEtting numerical Importance of Each Forest
importance(rf_1)
importance(rf_2)
importance(rf_3)
importance(rf_4)
importance(rf_5)
importance(rf_6)
importance(rf_7)
importance(rf_8)
importance(rf_9)
importance(rf_10)



test1<-read.csv("Test Dataset.csv")
test1_2<- test1[test1$Weekly.Earnings == 0,]
test1<-test1[,-1]
data_test1<- test1[test1$Education.Level == '9th grade',]
data_test2<- test1[test1$Education.Level == '10th grade',]
data_test3<- test1[test1$Education.Level == '11th grade',]
data_test4<- test1[test1$Education.Level == '12th grade',]
data_test5<- test1[test1$Education.Level == 'High School',]
data_test6<- test1[test1$Education.Level == 'Some College',]
data_test7<- test1[test1$Education.Level == 'Associate Degree',]
data_test8<- test1[test1$Education.Level == 'Bachelor',]
data_test9<- test1[test1$Education.Level == 'Master',]
data_test10<-test1[(test1$Education.Level == 'Prof. Degree')|(test1$Education.Level == 'Doctoral Degree'),]

test_pred1<-predict(rf_1,data_test1)
test_pred2<-predict(rf_2,data_test2)
test_pred3<-predict(rf_3,data_test3)
test_pred4<-predict(rf_4,data_test4)
test_pred5<-predict(rf_5,data_test5)
test_pred6<-predict(rf_6,data_test6)
test_pred7<-predict(rf_7,data_test7)
test_pred8<-predict(rf_8,data_test8)
test_pred9<-predict(rf_9,data_test9)
test_pred10<-predict(rf_10,data_test10)

data_test1<-cbind(data_test1,test_pred1)
data_test2<-cbind(data_test2,test_pred2)
data_test3<-cbind(data_test3,test_pred3)
data_test4<-cbind(data_test4,test_pred4)
data_test5<-cbind(data_test5,test_pred5)
data_test6<-cbind(data_test6,test_pred6)
data_test7<-cbind(data_test7,test_pred7)
data_test8<-cbind(data_test8,test_pred8)
data_test9<-cbind(data_test9,test_pred9)
data_test10<-cbind(data_test10,test_pred10)


test1_3<- test1[test1$Weekly.Earnings > 0,]

data_test11<-cbind(test1_3,'Employed')

colnames(data_test1)[26]<- 'Employment_prediction'
colnames(data_test2)[26]<- 'Employment_prediction'
colnames(data_test3)[26]<- 'Employment_prediction'
colnames(data_test4)[26]<- 'Employment_prediction'
colnames(data_test5)[26]<- 'Employment_prediction'
colnames(data_test6)[26]<- 'Employment_prediction'
colnames(data_test7)[26]<- 'Employment_prediction'
colnames(data_test8)[26]<- 'Employment_prediction'
colnames(data_test9)[26]<- 'Employment_prediction'
colnames(data_test10)[26]<- 'Employment_prediction'
colnames(data_test11)[26]<- 'Employment_prediction'



Prediction_RF<- rbind(data_test1,data_test2,data_test3,data_test4,data_test5,data_test6,data_test7,
                      data_test8,data_test9,data_test10)
write.csv(Prediction_RF,'Prediction_RF.csv')


################################CROSS VALIDATION#################################
  setwd("C:/Users/Eeshpaul/Downloads/IAS-_Intelligence_Analytics_Challenge_3.0_-_Let%27s_Begin")
# install.packages("ggplot2")
# library(ggplot2)

#Reading the dataset
data1<- read.csv("Training Dataset.csv")
data2<-data1[,-1]

data1_2<- data1[data1$Weekly.Earnings == 0,]
data1_2<-data1_2[,-1]

# cutoff = round(0.2*nrow(data1_2))
# cutoff
d_part1<- data1_2[1:5538,]
d_part2<- data1_2[5539:11076,]
d_part3<- data1_2[11077:16614,]
d_part4<- data1_2[16615:22152,]
d_part5<- data1_2[22153:27688,]

t1<- rbind(d_part1,d_part2,d_part3,d_part4)
t2<- rbind(d_part2,d_part3,d_part4,d_part5)
t3<- rbind(d_part1,d_part3,d_part4,d_part5)
t4<- rbind(d_part1,d_part2,d_part4,d_part5)
t5<- rbind(d_part1,d_part2,d_part3,d_part5)

v1<-d_part5
v2<-d_part1
v3<-d_part2
v4<-d_part3
v5<-d_part4



t1_1<- t1[t1$Education.Level == '9th grade',]
t1_2<- t1[t1$Education.Level == '10th grade',]
t1_3<- t1[t1$Education.Level == '11th grade',]
t1_4<- t1[t1$Education.Level == '12th grade',]
t1_5<- t1[t1$Education.Level == 'High School',]
t1_6<- t1[t1$Education.Level == 'Some College',]
t1_7<- t1[t1$Education.Level == 'Associate Degree',]
t1_8<- t1[t1$Education.Level == 'Bachelor',]
t1_9<- t1[t1$Education.Level == 'Master',]
t1_10<- t1[(t1$Education.Level == 'Prof. Degree')|(t1$Education.Level == 'Doctoral Degree'),]

v1_1<- v1[v1$Education.Level == '9th grade',]
v1_2<- v1[v1$Education.Level == '10th grade',]
v1_3<- v1[v1$Education.Level == '11th grade',]
v1_4<- v1[v1$Education.Level == '12th grade',]
v1_5<- v1[v1$Education.Level == 'High School',]
v1_6<- v1[v1$Education.Level == 'Some College',]
v1_7<- v1[v1$Education.Level == 'Associate Degree',]
v1_8<- v1[v1$Education.Level == 'Bachelor',]
v1_9<- v1[v1$Education.Level == 'Master',]
v1_10<- v1[(v1$Education.Level == 'Prof. Degree')|(v1$Education.Level == 'Doctoral Degree'),]

t2_1<- t2[t2$Education.Level == '9th grade',]
t2_2<- t2[t2$Education.Level == '10th grade',]
t2_3<- t2[t2$Education.Level == '11th grade',]
t2_4<- t2[t2$Education.Level == '12th grade',]
t2_5<- t2[t2$Education.Level == 'High School',]
t2_6<- t2[t2$Education.Level == 'Some College',]
t2_7<- t2[t2$Education.Level == 'Associate Degree',]
t2_8<- t2[t2$Education.Level == 'Bachelor',]
t2_9<- t2[t2$Education.Level == 'Master',]
t2_10<- t2[(t2$Education.Level == 'Prof. Degree')|(t2$Education.Level == 'Doctoral Degree'),]

v2_1<- v2[v2$Education.Level == '9th grade',]
v2_2<- v2[v2$Education.Level == '10th grade',]
v2_3<- v2[v2$Education.Level == '11th grade',]
v2_4<- v2[v2$Education.Level == '12th grade',]
v2_5<- v2[v2$Education.Level == 'High School',]
v2_6<- v2[v2$Education.Level == 'Some College',]
v2_7<- v2[v2$Education.Level == 'Associate Degree',]
v2_8<- v2[v2$Education.Level == 'Bachelor',]
v2_9<- v2[v2$Education.Level == 'Master',]
v2_10<- v2[(v2$Education.Level == 'Prof. Degree')|(v2$Education.Level == 'Doctoral Degree'),]

t3_1<- t3[t3$Education.Level == '9th grade',]
t3_2<- t3[t3$Education.Level == '10th grade',]
t3_3<- t3[t3$Education.Level == '11th grade',]
t3_4<- t3[t3$Education.Level == '12th grade',]
t3_5<- t3[t3$Education.Level == 'High School',]
t3_6<- t3[t3$Education.Level == 'Some College',]
t3_7<- t3[t3$Education.Level == 'Associate Degree',]
t3_8<- t3[t3$Education.Level == 'Bachelor',]
t3_9<- t3[t3$Education.Level == 'Master',]
t3_10<- t3[(t3$Education.Level == 'Prof. Degree')|(t3$Education.Level == 'Doctoral Degree'),]

v3_1<- v3[v3$Education.Level == '9th grade',]
v3_2<- v3[v3$Education.Level == '10th grade',]
v3_3<- v3[v3$Education.Level == '11th grade',]
v3_4<- v3[v3$Education.Level == '12th grade',]
v3_5<- v3[v3$Education.Level == 'High School',]
v3_6<- v3[v3$Education.Level == 'Some College',]
v3_7<- v3[v3$Education.Level == 'Associate Degree',]
v3_8<- v3[v3$Education.Level == 'Bachelor',]
v3_9<- v3[v3$Education.Level == 'Master',]
v3_10<- v3[(v3$Education.Level == 'Prof. Degree')|(v3$Education.Level == 'Doctoral Degree'),]


t4_1<- t4[t4$Education.Level == '9th grade',]
t4_2<- t4[t4$Education.Level == '10th grade',]
t4_3<- t4[t4$Education.Level == '11th grade',]
t4_4<- t4[t4$Education.Level == '12th grade',]
t4_5<- t4[t4$Education.Level == 'High School',]
t4_6<- t4[t4$Education.Level == 'Some College',]
t4_7<- t4[t4$Education.Level == 'Associate Degree',]
t4_8<- t4[t4$Education.Level == 'Bachelor',]
t4_9<- t4[t4$Education.Level == 'Master',]
t4_10<- t4[(t4$Education.Level == 'Prof. Degree')|(t4$Education.Level == 'Doctoral Degree'),]

v4_1<- v4[v4$Education.Level == '9th grade',]
v4_2<- v4[v4$Education.Level == '10th grade',]
v4_3<- v4[v4$Education.Level == '11th grade',]
v4_4<- v4[v4$Education.Level == '12th grade',]
v4_5<- v4[v4$Education.Level == 'High School',]
v4_6<- v4[v4$Education.Level == 'Some College',]
v4_7<- v4[v4$Education.Level == 'Associate Degree',]
v4_8<- v4[v4$Education.Level == 'Bachelor',]
v4_9<- v4[v4$Education.Level == 'Master',]
v4_10<- v4[(v4$Education.Level == 'Prof. Degree')|(v4$Education.Level == 'Doctoral Degree'),]

t5_1<- t5[t5$Education.Level == '9th grade',]
t5_2<- t5[t5$Education.Level == '10th grade',]
t5_3<- t5[t5$Education.Level == '11th grade',]
t5_4<- t5[t5$Education.Level == '12th grade',]
t5_5<- t5[t5$Education.Level == 'High School',]
t5_6<- t5[t5$Education.Level == 'Some College',]
t5_7<- t5[t5$Education.Level == 'Associate Degree',]
t5_8<- t5[t5$Education.Level == 'Bachelor',]
t5_9<- t5[t5$Education.Level == 'Master',]
t5_10<- t5[(t5$Education.Level == 'Prof. Degree')|(t5$Education.Level == 'Doctoral Degree'),]

v5_1<- v5[v5$Education.Level == '9th grade',]
v5_2<- v5[v5$Education.Level == '10th grade',]
v5_3<- v5[v5$Education.Level == '11th grade',]
v5_4<- v5[v5$Education.Level == '12th grade',]
v5_5<- v5[v5$Education.Level == 'High School',]
v5_6<- v5[v5$Education.Level == 'Some College',]
v5_7<- v5[v5$Education.Level == 'Associate Degree',]
v5_8<- v5[v5$Education.Level == 'Bachelor',]
v5_9<- v5[v5$Education.Level == 'Master',]
v5_10<- v5[(v5$Education.Level == 'Prof. Degree')|(v5$Education.Level == 'Doctoral Degree'),]







library(randomForest)


# for segment 1 t1
rf_1_1 <- randomForest(Employment.Status~., data=t1_1,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_1,t1_1)
p2<- predict(rf_1_1, v1_1)
train1_pred_1<-cbind(t1_1,p1)
val1_pred_1<-cbind(v1_1,p2)
# write.csv(train1_pred,'train1_pred.csv')
# write.csv(val1_pred,'val1_pred.csv')


# for segment 1 t2
rf_1_2 <- randomForest(Employment.Status~., data=t1_2,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_2,t1_2)
p2<- predict(rf_1_2, v1_2)
train1_pred_2<-cbind(t1_2,p1)
val1_pred_2<-cbind(v1_2,p2)

# for segment 1 t3
rf_1_3 <- randomForest(Employment.Status~., data=t1_3,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_3,t1_3)
p2<- predict(rf_1_3, v1_3)
train1_pred_3<-cbind(t1_3,p1)
val1_pred_3<-cbind(v1_3,p2)


# for segment 1 t4
rf_1_4 <- randomForest(Employment.Status~., data=t1_4,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_4,t1_4)
p2<- predict(rf_1_4, v1_4)
train1_pred_4<-cbind(t1_4,p1)
val1_pred_4<-cbind(v1_4,p2)


# for segment 1 t5
rf_1_5 <- randomForest(Employment.Status~., data=t1_5,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_5,t1_5)
p2<- predict(rf_1_5, v1_5)
train1_pred_5<-cbind(t1_5,p1)
val1_pred_5<-cbind(v1_5,p2)


# for segment 1 t6
rf_1_6 <- randomForest(Employment.Status~., data=t1_6,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_6,t1_6)
p2<- predict(rf_1_6, v1_6)
train1_pred_6<-cbind(t1_6,p1)
val1_pred_6<-cbind(v1_6,p2)

# for segment 1 t7
rf_1_7 <- randomForest(Employment.Status~., data=t1_7,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_7,t1_7)
p2<- predict(rf_1_7, v1_7)
train1_pred_7<-cbind(t1_7,p1)
val1_pred_7<-cbind(v1_7,p2)


# for segment 1 t8
rf_1_8 <- randomForest(Employment.Status~., data=t1_8,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_8,t1_8)
p2<- predict(rf_1_8, v1_8)
train1_pred_8<-cbind(t1_8,p1)
val1_pred_8<-cbind(v1_8,p2)

# for segment 1 t9
rf_1_9 <- randomForest(Employment.Status~., data=t1_9,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_1_9,t1_9)
p2<- predict(rf_1_9, v1_9)
train1_pred_9<-cbind(t1_9,p1)
val1_pred_9<-cbind(v1_9,p2)

# for segment 1 t10
rf_1_10 <- randomForest(Employment.Status~., data=t1_10,
                        ntree = 100,
                        mtry = 5,
                        importance = TRUE,
                        proximity = TRUE)

p1<-predict(rf_1_10,t1_10)
p2<- predict(rf_1_10, v1_10)
train1_pred_10<-cbind(t1_10,p1)
val1_pred_10<-cbind(v1_10,p2)


# for segment 2 t1
rf_2_1 <- randomForest(Employment.Status~., data=t2_1,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_1,t2_1)
p2<- predict(rf_2_1, v2_1)
train2_pred_1<-cbind(t2_1,p1)
val2_pred_1<-cbind(v2_1,p2)


# for segment 2 t2
rf_2_2 <- randomForest(Employment.Status~., data=t2_2,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_2,t2_2)
p2<- predict(rf_2_2, v2_2)
train2_pred_2<-cbind(t2_2,p1)
val2_pred_2<-cbind(v2_2,p2)


# for segment 2 t3
rf_2_3<- randomForest(Employment.Status~., data=t2_3,
                      ntree = 100,
                      mtry = 5,
                      importance = TRUE,
                      proximity = TRUE)

p1<-predict(rf_2_3,t2_3)
p2<- predict(rf_2_3, v2_3)
train2_pred_3<-cbind(t2_3,p1)
val2_pred_3<-cbind(v2_3,p2)

# for segment 2 t4
rf_2_4 <- randomForest(Employment.Status~., data=t2_4,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_4,t2_4)
p2<- predict(rf_2_4, v2_4)
train2_pred_4<-cbind(t2_4,p1)
val2_pred_4<-cbind(v2_4,p2)


# for segment 2 t5
rf_2_5 <- randomForest(Employment.Status~., data=t2_5,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_5,t2_5)
p2<- predict(rf_2_5, v2_5)
train2_pred_5<-cbind(t2_5,p1)
val2_pred_5<-cbind(v2_5,p2)

# for segment 2 t6
rf_2_6 <- randomForest(Employment.Status~., data=t2_6,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_6,t2_6)
p2<- predict(rf_2_6, v2_6)
train2_pred_6<-cbind(t2_6,p1)
val2_pred_6<-cbind(v2_6,p2)

# for segment 2 t7
rf_2_7 <- randomForest(Employment.Status~., data=t2_7,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_7,t2_7)
p2<- predict(rf_2_7, v2_7)
train2_pred_7<-cbind(t2_7,p1)
val2_pred_7<-cbind(v2_7,p2)

# for segment 2 t8
rf_2_8 <- randomForest(Employment.Status~., data=t2_8,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_8,t2_8)
p2<- predict(rf_2_8, v2_8)
train2_pred_8<-cbind(t2_8,p1)
val2_pred_8<-cbind(v2_8,p2)


# for segment 2 t9
rf_2_9 <- randomForest(Employment.Status~., data=t2_9,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_2_9,t2_9)
p2<- predict(rf_2_9, v2_9)
train2_pred_9<-cbind(t2_9,p1)
val2_pred_9<-cbind(v2_9,p2)

# for segment 2 t10
rf_2_10 <- randomForest(Employment.Status~., data=t2_10,
                        ntree = 100,
                        mtry = 5,
                        importance = TRUE,
                        proximity = TRUE)

p1<-predict(rf_2_10,t2_10)
p2<- predict(rf_2_10, v2_10)
train2_pred_10<-cbind(t2_10,p1)
val2_pred_10<-cbind(v2_10,p2)


# for segment 3 t1
rf_3_1 <- randomForest(Employment.Status~., data=t3_1,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_1,t3_1)
p2<- predict(rf_3_1, v3_1)
train3_pred_1<-cbind(t3_1,p1)
val3_pred_1<-cbind(v3_1,p2)


# for segment 3 t2
rf_3_2 <- randomForest(Employment.Status~., data=t3_2,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_2,t3_2)
p2<- predict(rf_3_2, v3_2)
train3_pred_2<-cbind(t3_2,p1)
val3_pred_2<-cbind(v3_2,p2)


# for segment 3 t4
rf_3_3 <- randomForest(Employment.Status~., data=t3_3,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_3,t3_3)
p2<- predict(rf_3_3, v3_3)
train3_pred_3<-cbind(t3_3,p1)
val3_pred_3<-cbind(v3_3,p2)



# for segment 3 t4
rf_3_4 <- randomForest(Employment.Status~., data=t3_4,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_4,t3_4)
p2<- predict(rf_3_4, v3_4)
train3_pred_4<-cbind(t3_4,p1)
val3_pred_4<-cbind(v3_4,p2)


# for segment 3 t5
rf_3_5 <- randomForest(Employment.Status~., data=t3_5,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_5,t3_5)
p2<- predict(rf_3_5, v3_5)
train3_pred_5<-cbind(t3_5,p1)
val3_pred_5<-cbind(v3_5,p2)


# for segment 3 t6

rf_3_6 <- randomForest(Employment.Status~., data=t3_6,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_6,t3_6)
p2<- predict(rf_3_6, v3_6)
train3_pred_6<-cbind(t3_6,p1)
val3_pred_6<-cbind(v3_6,p2)


# for segment 3 t7
rf_3_7 <- randomForest(Employment.Status~., data=t3_7,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_7,t3_7)
p2<- predict(rf_3_7, v3_7)
train3_pred_7<-cbind(t3_7,p1)
val3_pred_7<-cbind(v3_7,p2)

# for segment 3 t8
t3_8 <- t3_8[1:3000,]
rf_3_8 <- randomForest(Employment.Status~., data=t3_8,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_8,t3_8)
p2<- predict(rf_3_8, v3_8)
train3_pred_8<-cbind(t3_8,p1)
val3_pred_8<-cbind(v3_8,p2)


# for segment 3 t9
rf_3_9 <- randomForest(Employment.Status~., data=t3_9,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_3_9,t3_9)
p2<- predict(rf_3_9, v3_9)
train3_pred_9<-cbind(t3_9,p1)
val3_pred_9<-cbind(v3_9,p2)

# for segment 3 t10
rf_3_10 <- randomForest(Employment.Status~., data=t3_10,
                        ntree = 100,
                        mtry = 5,
                        importance = TRUE,
                        proximity = TRUE)

p1<-predict(rf_3_10,t3_10)
p2<- predict(rf_3_10, v3_10)
train3_pred_10<-cbind(t3_10,p1)
val3_pred_10<-cbind(v3_10,p2)


# for segment 4 t1
rf_4_1 <- randomForest(Employment.Status~., data=t4_1,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_1,t4_1)
p2<- predict(rf_4_1, v4_1)
train4_pred_1<-cbind(t4_1,p1)
val4_pred_1<-cbind(v4_1,p2)



# for segment 4 t2
rf_4_2 <- randomForest(Employment.Status~., data=t4_2,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_2,t4_2)
p2<- predict(rf_4_2, v4_2)
train4_pred_2<-cbind(t4_2,p1)
val4_pred_2<-cbind(v4_2,p2)


# for segment 4 t3
rf_4_3 <- randomForest(Employment.Status~., data=t4_3,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_3,t4_3)
p2<- predict(rf_4_3, v4_3)
train4_pred_3<-cbind(t4_3,p1)
val4_pred_3<-cbind(v4_3,p2)


# for segment 4 t4
rf_4_4 <- randomForest(Employment.Status~., data=t4_4,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_4,t4_4)
p2<- predict(rf_4_4, v4_4)
train4_pred_4<-cbind(t4_4,p1)
val4_pred_4<-cbind(v4_4,p2)


# for segment 4 t5
rf_4_5 <- randomForest(Employment.Status~., data=t4_5,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_5,t4_5)
p2<- predict(rf_4_5, v4_5)
train4_pred_5<-cbind(t4_5,p1)
val4_pred_5<-cbind(v4_5,p2)


# for segment 4 t6
t4_6 <- t4_6[1:2500,]
rf_4_6 <- randomForest(Employment.Status~., data=t4_6,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_6,t4_6)
p2<- predict(rf_4_6, v4_6)
train4_pred_6<-cbind(t4_6,p1)
val4_pred_6<-cbind(v4_6,p2)

# for segment 4 t7
rf_4_7 <- randomForest(Employment.Status~., data=t4_7,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_7,t4_7)
p2<- predict(rf_4_7, v4_7)
train4_pred_7<-cbind(t4_7,p1)
val4_pred_7<-cbind(v4_7,p2)

# for segment 4 t8
t4_8 <- t4_8[1:2100,]
rf_4_8 <- randomForest(Employment.Status~., data=t4_8,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_8,t4_8)
p2<- predict(rf_4_8, v4_8)
train4_pred_8<-cbind(t4_8,p1)
val4_pred_8<-cbind(v4_8,p2)


# for segment 4 t9
rf_4_9 <- randomForest(Employment.Status~., data=t4_9,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_4_9,t4_9)
p2<- predict(rf_4_9, v4_9)
train4_pred_9<-cbind(t4_9,p1)
val4_pred_9<-cbind(v4_9,p2)


# for segment 4 t10
rf_4_10 <- randomForest(Employment.Status~., data=t4_10,
                        ntree = 100,
                        mtry = 5,
                        importance = TRUE,
                        proximity = TRUE)

p1<-predict(rf_4_10,t4_10)
p2<- predict(rf_4_10, v4_10)
train4_pred_10<-cbind(t4_10,p1)
val4_pred_10<-cbind(v4_10,p2)


# for segment 5 t1
rf_5_1 <- randomForest(Employment.Status~., data=t5_1,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_1,t5_1)
p2<- predict(rf_5_1, v5_1)
train5_pred_1<-cbind(t5_1,p1)
val5_pred_1<-cbind(v5_1,p2)



# for segment 5 t2
rf_5_2 <- randomForest(Employment.Status~., data=t5_2,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_2,t5_2)
p2<- predict(rf_5_2, v5_2)
train5_pred_2<-cbind(t5_2,p1)
val5_pred_2<-cbind(v5_2,p2)


# for segment 5 t3
rf_5_3 <- randomForest(Employment.Status~., data=t5_3,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_3,t5_3)
p2<- predict(rf_5_3, v5_3)
train5_pred_3<-cbind(t5_3,p1)
val5_pred_3<-cbind(v5_3,p2)



# for segment 5 t4
rf_5_4 <- randomForest(Employment.Status~., data=t5_4,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_4,t5_4)
p2<- predict(rf_5_4, v5_4)
train5_pred_4<-cbind(t5_4,p1)
val5_pred_4<-cbind(v5_4,p2)

# for segment 5 t5

rf_5_5 <- randomForest(Employment.Status~., data=t5_5,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_5,t5_5)
p2<- predict(rf_5_5, v5_5)
train5_pred_5<-cbind(t5_5,p1)
val5_pred_5<-cbind(v5_5,p2)



# for segment 5 t6

rf_5_6 <- randomForest(Employment.Status~., data=t5_6,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_6,t5_6)
p2<- predict(rf_5_6, v5_6)
train5_pred_6<-cbind(t5_6,p1)
val5_pred_6<-cbind(v5_6,p2)

# for segment 5 t7

rf_5_7 <- randomForest(Employment.Status~., data=t5_7,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_7,t5_7)
p2<- predict(rf_5_7, v5_7)
train5_pred_7<-cbind(t5_7,p1)
val5_pred_7<-cbind(v5_7,p2)


# for segment 5 t8

rf_5_8<- randomForest(Employment.Status~., data=t5_8,
                      ntree = 100,
                      mtry = 5,
                      importance = TRUE,
                      proximity = TRUE)

p1<-predict(rf_5_8,t5_8)
p2<- predict(rf_5_8, v5_8)
train5_pred_8<-cbind(t5_8,p1)
val5_pred_8<-cbind(v5_8,p2)

# for segment 5 t9

rf_5_9 <- randomForest(Employment.Status~., data=t5_9,
                       ntree = 100,
                       mtry = 5,
                       importance = TRUE,
                       proximity = TRUE)

p1<-predict(rf_5_9,t5_9)
p2<- predict(rf_5_9, v5_9)
train5_pred_9<-cbind(t5_9,p1)
val5_pred_9<-cbind(v5_9,p2)

# for segment 5 t1
rf_5_10 <- randomForest(Employment.Status~., data=t5_10,
                        ntree = 100,
                        mtry = 5,
                        importance = TRUE,
                        proximity = TRUE)

p1<-predict(rf_5_10,t5_10)
p2<- predict(rf_5_10, v5_10)
train5_pred_10<-cbind(t5_10,p1)
val5_pred_10<-cbind(v5_10,p2)
####################################
library(data.table)
a <- fread("val4_pred_6.csv")
b <- fread("val4_pred_8.csv")
c <- fread("val5_pred_8.csv")

###############################
##getting the results for the non prediction set for 
##Getting validation dataset
data1_3<- data1[data1$Weekly.Earnings > 0,]
data1_3<-data1_3[,-1]
cutoff = round(0.2*nrow(data1_3))

d11_part1<- data1_3[1:7264,]

d11_part1<- data1_3[1:7264,]
d11_part2<- data1_3[7266:14528,]
d11_part3<- data1_3[14529:21792,]
d11_part4<- data1_3[21793:29056,]
d11_part5<- data1_3[29057:36318,]

val11_pred1<-cbind(d11_part1,'Employed')
val11_pred2<-cbind(d11_part2,'Employed')
val11_pred3<-cbind(d11_part3,'Employed')
val11_pred4<-cbind(d11_part4,'Employed')
val11_pred5<-cbind(d11_part5,'Employed')

colnames(val11_pred1)[25]<- 'p2'
colnames(val11_pred2)[25]<- 'p2'
colnames(val11_pred3)[25]<- 'p2'
colnames(val11_pred4)[25]<- 'p2'
colnames(val11_pred5)[25]<- 'p2'
install.packages('caret')
library(caret)

val_final1<- rbind(val1_pred_1,val1_pred_2,val1_pred_3,val1_pred_4,val1_pred_5,val1_pred_6,val1_pred_7,
                   val1_pred_8,val1_pred_9,val1_pred_10)
val2_final1<- rbind(val_final1,val11_pred1)
confusionMatrix(val2_final1$p2,val2_final1$Employment.Status)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               8033                  8          2
# Not in labor force      112               3878        538
# Unemployed               11                 78        140

# Overall Statistics
# 
# Accuracy : 0.9415          
# 95% CI : (0.9373, 0.9455)
# No Information Rate : 0.6372          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8804          
# Mcnemar's Test P-Value : < 2.2e-16       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9849                    0.9783           0.20588
# Specificity                   0.9978                    0.9264           0.99266
# Pos Pred Value                0.9988                    0.8564           0.61135
# Neg Pred Value                0.9741                    0.9896           0.95704
# Prevalence                    0.6372                    0.3097           0.05312
# Detection Rate                0.6276                    0.3030           0.01094
# Detection Prevalence          0.6284                    0.3538           0.01789
# Balanced Accuracy             0.9914                    0.9524           0.59927


val_final2<- rbind(val2_pred_1,val2_pred_2,val2_pred_3,val2_pred_4,val2_pred_5,val2_pred_6,val2_pred_7,
                   val2_pred_8,val2_pred_9,val2_pred_10)
val2_final2<- rbind(val_final2,val11_pred2)
confusionMatrix(val2_final2$p2,val2_final2$Employment.Status)

# Confusion Matrix and Statistics
# 8
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               8225                  1          0
# Not in labor force       92               3918        435
# Unemployed                4                 35         91
# 
# Overall Statistics
# 
# Accuracy : 0.9557         
# 95% CI : (0.952, 0.9592)
# No Information Rate : 0.65           
# P-Value [Acc > NIR] : < 2.2e-16      
# 
# Kappa : 0.9067         
# Mcnemar's Test P-Value : < 2.2e-16      
# 
# Statistics by Class:
# 
#                      Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9885                    0.9909          0.173004
# Specificity                   0.9998                    0.9404          0.996823
# Pos Pred Value                0.9999                    0.8814          0.700000
# Neg Pred Value                0.9790                    0.9957          0.965670
# Prevalence                    0.6500                    0.3089          0.041091
# Detection Rate                0.6425                    0.3061          0.007109
# Detection Prevalence          0.6426                    0.3472          0.010155
# Balanced Accuracy             0.9941                    0.9657          0.584913
# > 
val_final3<- rbind(val3_pred_1,val3_pred_2,val3_pred_3,val3_pred_4,val3_pred_5,val3_pred_6,val3_pred_7,
                   val3_pred_8,val3_pred_9,val3_pred_10)
val2_final3<- rbind(val_final3,val11_pred3)
confusionMatrix(val2_final3$p2,val2_final3$Employment.Status)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               8173                  2          1
# Not in labor force       97               3956        441
# Unemployed                5                 46         81
# 
# Overall Statistics
# 
# Accuracy : 0.9538        
# 95% CI : (0.95, 0.9573)
# No Information Rate : 0.6464        
# P-Value [Acc > NIR] : < 2.2e-16     
# 
# Kappa : 0.903         
# Mcnemar's Test P-Value : < 2.2e-16     
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9877                    0.9880          0.154876
# Specificity                   0.9993                    0.9388          0.995847
# Pos Pred Value                0.9996                    0.8803          0.613636
# Neg Pred Value                0.9780                    0.9942          0.965114
# Prevalence                    0.6464                    0.3128          0.040853
# Detection Rate                0.6384                    0.3090          0.006327
# Detection Prevalence          0.6387                    0.3510          0.010311
# Balanced Accuracy             0.9935                    0.9634          0.575361


val_final4<- rbind(val4_pred_1,val4_pred_2,val4_pred_3,val4_pred_4,val4_pred_5,val4_pred_6,val4_pred_7,
                   val4_pred_8,val4_pred_9,val4_pred_10)
val2_final4<- rbind(val_final4,val11_pred4)
confusionMatrix(val2_final4$p2,val2_final4$Employment.Status)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               8098                  1          0
# Not in labor force      125               3828        561
# Unemployed                4                 48        137
# 
# Overall Statistics
# 
# Accuracy : 0.9423          
# 95% CI : (0.9381, 0.9463)
# No Information Rate : 0.6426          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8812          
# Mcnemar's Test P-Value : < 2.2e-16       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9843                    0.9874           0.19628
# Specificity                   0.9998                    0.9231           0.99570
# Pos Pred Value                0.9999                    0.8480           0.72487
# Neg Pred Value                0.9726                    0.9941           0.95552
# Prevalence                    0.6426                    0.3028           0.05452
# Detection Rate                0.6326                    0.2990           0.01070
# Detection Prevalence          0.6326                    0.3526           0.01476
# Balanced Accuracy             0.9921                    0.9552           0.59599
# 


# val_final5<- rbind(val5_pred_1,val5_pred_2,val5_pred_3,val5_pred_4,val5_pred_5,val5_pred_6,val5_pred_7,
#                    val5_pred_8,val5_pred_9,val5_pred_10)
# val2_final5<- rbind(val_final5,val11_pred5)
# confusionMatrix(val2_final5$p2,val2_final5$Employment.Status)
# 
# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7965                  1          0
# Not in labor force      148               3771        711
# Unemployed                5                 59        140
# 
# Overall Statistics
# 
# Accuracy : 0.9278          
# 95% CI : (0.9232, 0.9322)
# No Information Rate : 0.6342          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8545          
# Mcnemar's Test P-Value : < 2.2e-16       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9812                    0.9843           0.16451
# Specificity                   0.9998                    0.9042           0.99464
# Pos Pred Value                0.9999                    0.8145           0.68627
# Neg Pred Value                0.9683                    0.9927           0.94355
# Prevalence                    0.6342                    0.2993           0.06648
# Detection Rate                0.6223                    0.2946           0.01094
# Detection Prevalence          0.6223                    0.3617           0.01594
# Balanced Accuracy             0.9905                    0.9443           0.57958




#### Evaluation of ANN 

cv1<-read.csv('cv1.csv')
cv2<-read.csv('cv2.csv')
cv3<-read.csv('cv3.csv')
cv4<-read.csv('cv4.csv')
cv5<-read.csv('cv5.csv')

# run thrice
cv1<-cv1[,-2]
cv2<-cv2[,-2]
cv3<-cv3[,-2]
cv4<-cv4[,-2]
cv5<-cv5[,-2]

cvf1<- val11_pred1[,c(4,25)]
cvf2<- val11_pred2[,c(4,25)]
cvf3<- val11_pred3[,c(4,25)]
cvf4<- val11_pred4[,c(4,25)]
cvf5<- val11_pred5[,c(4,25)]


colnames(cvf1)[1]<- 'predict'
colnames(cvf1)[2]<- 'true'

colnames(cvf2)[1]<- 'predict'
colnames(cvf2)[2]<- 'true'

colnames(cvf3)[1]<- 'predict'
colnames(cvf3)[2]<- 'true'

colnames(cvf4)[1]<- 'predict'
colnames(cvf4)[2]<- 'true'

colnames(cvf5)[1]<- 'predict'
colnames(cvf5)[2]<- 'true'


val_ann1<- rbind(cv1,cvf1)
val_ann2<- rbind(cv2,cvf2)
val_ann3<- rbind(cv3,cvf3)
val_ann4<- rbind(cv4,cvf4)
val_ann5<- rbind(cv5,cvf5)


# calculating Accuracy for ANN with confusion matrix
confusionMatrix(val_ann1$predict,val_ann1$true)
# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7941                 42          7
# Not in labor force       80               2859        330
# Unemployed               14                242        181
# 
# Overall Statistics
# 
# Accuracy : 0.9389          
# 95% CI : (0.9344, 0.9431)
# No Information Rate : 0.687           
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8653          
# Mcnemar's Test P-Value : 4.183e-06       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9883                    0.9096           0.34942
# Specificity                   0.9866                    0.9521           0.97710
# Pos Pred Value                0.9939                    0.8746           0.41419
# Neg Pred Value                0.9746                    0.9663           0.97007
# Prevalence                    0.6870                    0.2687           0.04429
# Detection Rate                0.6790                    0.2444           0.01548
# Detection Prevalence          0.6831                    0.2795           0.03736
# Balanced Accuracy             0.9875                    0.9309           0.66326

confusionMatrix(val_ann2$predict,val_ann2$true)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7980                 37         11
# Not in labor force       87               2758        358
# Unemployed               16                306        168
# 
# Overall Statistics
# 
# Accuracy : 0.9305         
# 95% CI : (0.9257, 0.935)
# No Information Rate : 0.6896         
# P-Value [Acc > NIR] : < 2.2e-16      
# 
# Kappa : 0.8467         
# Mcnemar's Test P-Value : 1.43e-05       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9873                    0.8894           0.31285
# Specificity                   0.9868                    0.9484           0.97121
# Pos Pred Value                0.9940                    0.8611           0.34286
# Neg Pred Value                0.9721                    0.9597           0.96714
# Prevalence                    0.6896                    0.2646           0.04582
# Detection Rate                0.6808                    0.2353           0.01433
# Detection Prevalence          0.6849                    0.2733           0.04181
# Balanced Accuracy             0.9870                    0.9189           0.64203

confusionMatrix(val_ann3$predict,val_ann3$true)
# Confusion Matrix and Statistics
#  
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7957                 56         17
# Not in labor force       65               2825        311
# Unemployed               14                265        164
# 
# Overall Statistics
# 
# Accuracy : 0.9376         
# 95% CI : (0.9331, 0.942)
# No Information Rate : 0.6884         
# P-Value [Acc > NIR] : <2e-16         
# 
# Kappa : 0.8617         
# Mcnemar's Test P-Value : 0.2007         
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9902                    0.8980           0.33333
# Specificity                   0.9799                    0.9559           0.97505
# Pos Pred Value                0.9909                    0.8825           0.37020
# Neg Pred Value                0.9783                    0.9621           0.97080
# Prevalence                    0.6884                    0.2695           0.04214
# Detection Rate                0.6816                    0.2420           0.01405
# Detection Prevalence          0.6879                    0.2742           0.03795
# Balanced Accuracy             0.9851                    0.9269           0.65419
# > 


confusionMatrix(val_ann4$predict,val_ann4$true)
# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7933                 34         19
# Not in labor force       97               2861        363
# Unemployed               15                242        173
# 
# Overall Statistics
# 
# Accuracy : 0.9344          
# 95% CI : (0.9298, 0.9388)
# No Information Rate : 0.6854          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8562          
# Mcnemar's Test P-Value : 6.974e-12       
# 
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9861                    0.9120           0.31171
# Specificity                   0.9856                    0.9465           0.97702
# Pos Pred Value                0.9934                    0.8615           0.40233
# Neg Pred Value                0.9701                    0.9672           0.96622
# Prevalence                    0.6854                    0.2673           0.04729
# Detection Rate                0.6759                    0.2438           0.01474
# Detection Prevalence          0.6804                    0.2830           0.03664
# Balanced Accuracy             0.9859                    0.9293           0.64436


confusionMatrix(val_ann5$predict,val_ann5$true)

# Confusion Matrix and Statistics
# 
# Reference
# Prediction           Employed Not in labor force Unemployed
# Employed               7899                 45         11
# Not in labor force       78               2896        345
# Unemployed               19                263        182
# 
# Overall Statistics
# 
# Accuracy : 0.9352          
# 95% CI : (0.9306, 0.9396)
# No Information Rate : 0.6812          
# P-Value [Acc > NIR] : < 2.2e-16       
# 
# Kappa : 0.8589          
# Mcnemar's Test P-Value : 6.38e-05        
#   
# Statistics by Class:
# 
# Class: Employed Class: Not in labor force Class: Unemployed
# Sensitivity                   0.9879                    0.9039           0.33829
# Specificity                   0.9850                    0.9504           0.97482
# Pos Pred Value                0.9930                    0.8726           0.39224
# Neg Pred Value                0.9744                    0.9634           0.96842
# Prevalence                    0.6812                    0.2730           0.04583
# Detection Rate                0.6729                    0.2467           0.01551
# Detection Prevalence          0.6777                    0.2828           0.03953
# Balanced Accuracy             0.9865                    0.9272           0.65656



