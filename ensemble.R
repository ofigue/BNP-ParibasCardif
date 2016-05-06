xgboost1 <- read.table("predXGBtest.csv", header=T, sep=",")
rforest1 <- read.table("predRFtest.csv", header=T, sep=",")
gbm1 <- read.table("predGBMtest.csv", header=T, sep=",")
glmnet1 <- read.table("glmnet.csv", header=T, sep=",")

names(xgboost1)<-c("ID", "xgb1")
names(rforest1)<-c("ID", "rf1")
names(gbm1)<-c("ID", "gbm1")
names(glmnet1)<-c("ID", "glmnet1")


alfa<-merge(x = xgboost1,y = rforest1,by = "ID")
beta<-merge(x = alfa,y = gbm1,by = "ID")
ensamble<-merge(x = beta,y = glmnet1,by = "ID")

ensamble$PredictedProb<-rowMeans(x = ensamble[,c(2,3,4,5)])

submission<-as.data.frame(ensamble[,c(1,6)])

write.csv(submission, "ensamble.csv", row.names=F, quote=F)



