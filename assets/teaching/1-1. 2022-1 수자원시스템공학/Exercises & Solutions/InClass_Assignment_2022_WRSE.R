

## In-Class Assignment, WRSE, Spring 2022
## Topic: Evolutionary Optimization Models

## EXAMPLE 1 ###

#https://www.datacamp.com/community/tutorials/neural-network-models-r
#install.packages("neuralnet")
library(neuralnet)

set.seed(42)
# creating training data set
TKS=c(20,10,30,20,80,30)
CSS=c(90,20,40,50,50,80)
Placed=c(1,0,0,0,1,1)
# Here, you will combine multiple columns or features into a single set of data
df=data.frame(TKS,CSS,Placed)

nn=neuralnet(Placed~TKS+CSS,data=df, hidden=3,act.fct = "logistic",
             linear.output = FALSE)

# plot neural network
plot(nn)

# creating test set
TKS=c(30,40,85)
CSS=c(85,50,40)
test=data.frame(TKS,CSS)

## Prediction using neural network
Predict=compute(nn,test)
Predict$net.result

# Converting probabilities into binary classes setting threshold level 0.5
prob <- Predict$net.result
pred <- ifelse(prob>0.5, 1, 0)
pred



## EXAMPLE 2 ###
rm(list=ls())

library(neuralnet)

# 1-1 Read the Data & Random sampling
data = read.csv("cereals.csv", header=T)

samplesize = 0.60 * nrow(data)
set.seed(80)
index = sample( seq_len ( nrow ( data ) ), size = samplesize )

# 1-2 Create training and test set
datatrain = data[ index, ]
datatest = data[ -index, ]

## 1-3 Scale data for neural network
max = apply(data , 2 , max)
min = apply(data, 2 , min)
scaled = as.data.frame(scale(data, center = min, scale = max - min))

# 1-4 creating training and test set &  fit neural network
trainNN = scaled[index , ]
testNN = scaled[-index , ]

set.seed(2)
NN = neuralnet(rating ~ calories + protein + fat + sodium + fiber, trainNN, hidden = 3, act.fct = "logistic", linear.output = T )

plot(NN)

## 1-5 Prediction using neural network
predict_testNN = compute(NN, testNN[,c(1:5)])
predict_testNN = (predict_testNN$net.result * (max(data$rating) - min(data$rating))) + min(data$rating)

plot(datatest$rating, predict_testNN, col='blue', pch=16, ylab = "predicted rating NN", xlab = "real rating")
abline(0,1)

RMSE.NN = (sum((datatest$rating - predict_testNN)^2) / nrow(datatest)) ^ 0.5
RMSE.NN
