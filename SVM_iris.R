?iris
iris
summary(iris)
head(iris)
dim(iris)
str(iris)
mydata<-iris
set.seed(251)
split <- sample.split(iris$Species,SplitRatio = 0.75)
training <- subset(iris,split==T)
test <- subset(iris,split==F)
iris_model <- svm(Species~.,data=training,kernel='rbf')
mydata$Species <- as.factor(mydata$Species)
table(mydata$Species)
iris_model <- svm(Species~.,data=training)
y_pred <- predict(iris_model,newdata=test)
y_pred
test$Species
cm <- table(test$Species,y_pred)
confusionMatrix(cm)
