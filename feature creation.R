##########################
# train
##########################

train$fe1<-train$v50*train$v10
train$fe2<-train$v50*train$v12
train$fe3<-train$v50*train$v14
train$fe4<-train$v50*train$v114

train$fe5<-train$v129*train$v40
train$fe6<-train$v129*train$v34
train$fe7<-train$v129*train$v21

train$fe8<-train$v114*train$v10
train$fe9<-train$v114*train$v12
train$fe10<-train$v114*train$v14

train$fe11<-train$v21*train$v50
train$fe12<-train$v21*train$v10
train$fe13<-train$v21*train$v12
train$fe14<-train$v21*train$v14


alfa<-train %>%
  select(v50, v10, v12, v14)
train$fe15<-rowSums(as.matrix(alfa))
train$fe16<-rowMeans(as.matrix(alfa))
train$fe17<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-train %>%
  select(v129, v40, v10, v114)
train$fe18<-rowSums(as.matrix(alfa))
train$fe19<-rowMeans(as.matrix(alfa))
train$fe20<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-train %>%
  select(v40, v34, v21)
train$fe21<-rowSums(as.matrix(alfa))
train$fe22<-rowMeans(as.matrix(alfa))
train$fe23<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-train %>%
  select(v21, v129, v14)
train$fe24<-rowSums(as.matrix(alfa))
train$fe25<-rowMeans(as.matrix(alfa))
train$fe26<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-train %>%
  select(v98, v100, v39)
train$fe27<-rowSums(as.matrix(alfa))
train$fe28<-rowMeans(as.matrix(alfa))
train$fe29<-rowSds(as.matrix(alfa))
rm(alfa)

train$fe30<-train$v50*train$v56
train$fe31<-train$v50*train$v71
train$fe32<-train$v66*train$v66
train$fe33<-train$v50*train$v50
train$fe34<-train$v50*train$v52
train$fe35<-train$v50*train$v62
train$fe36<-train$v47*train$v47


##########################
# test
##########################

test$fe1<-test$v50*test$v10
test$fe2<-test$v50*test$v12
test$fe3<-test$v50*test$v14
test$fe4<-test$v50*test$v114

test$fe5<-test$v129*test$v40
test$fe6<-test$v129*test$v34
test$fe7<-test$v129*test$v21

test$fe8<-test$v114*test$v10
test$fe9<-test$v114*test$v12
test$fe10<-test$v114*test$v14

test$fe11<-test$v21*test$v50
test$fe12<-test$v21*test$v10
test$fe13<-test$v21*test$v12
test$fe14<-test$v21*test$v14



alfa<-test %>%
  select(v50, v10, v12, v14)
test$fe15<-rowSums(as.matrix(alfa))
test$fe16<-rowMeans(as.matrix(alfa))
test$fe17<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-test %>%
  select(v129, v40, v10, v114)
test$fe18<-rowSums(as.matrix(alfa))
test$fe19<-rowMeans(as.matrix(alfa))
test$fe20<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-test %>%
  select(v40, v34, v21)
test$fe21<-rowSums(as.matrix(alfa))
test$fe22<-rowMeans(as.matrix(alfa))
test$fe23<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-test %>%
  select(v21, v129, v14)
test$fe24<-rowSums(as.matrix(alfa))
test$fe25<-rowMeans(as.matrix(alfa))
test$fe26<-rowSds(as.matrix(alfa))
rm(alfa)

alfa<-test %>%
  select(v98, v100, v39)
test$fe27<-rowSums(as.matrix(alfa))
test$fe28<-rowMeans(as.matrix(alfa))
test$fe29<-rowSds(as.matrix(alfa))
rm(alfa)

test$fe30<-test$v50*test$v56
test$fe31<-test$v50*test$v71
test$fe32<-test$v66*test$v66
test$fe33<-test$v50*test$v50
test$fe34<-test$v50*test$v52
test$fe35<-test$v50*test$v62
test$fe36<-test$v47*test$v47