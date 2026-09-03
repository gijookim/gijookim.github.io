##1
print(paste("The year is",2010))
print(paste("The year is",2011))
print(paste("The year is",2012))
print(paste("The year is",2013))
print(paste("The year is",2014))
print(paste("The year is",2015))



#1-A
for (year in c(2010,2011,2012,2013,2014,2015)){
  print(paste("The year is", year))
}


#1-B
for (year in c(2010,2011,2012,2013,2014,2015)){
  for (month in c("Jan","Feb","Mar")){
  print(paste("The year is", year, "The month is", month))
  }
}



##2
x <- seq(1,40,by=1)
x
poisson_pdf <- dpois(x,lambda = 20)
poisson_cdf <- ppois(x,lambda = 20)

#2-A
poisson_cake = matrix(0,nrow=40,ncol=2)
poisson_cake
cal = matrix(0,nrow=40,ncol=40)
cal

for(i in 1:40) { 
  for (j in 1:40){ 
    cal[i,j] <- if(i==j){cal[i,j]=35000*i-25000*j} else if(i>j){cal[i,j]=(35000-25000)*j} 
    else if(i<j){cal[i,j]=35000*i-25000*j} 
  }
}

cal
for (i in 1:40) {
  poisson_cake[i,1] = i 
  poisson_cake[i,2] = sum(cal[,i]*poisson_pdf)
  i=i+1
}

plot(poisson_cake[,2])
which.max(poisson_cake[,2])


#2-B
poisson_cake_pen = matrix(0,nrow=40,ncol=2)
cal_penalty = matrix(0,nrow=40,ncol=40)
for(i in 1:40) { #?湮??
  for (j in 1:40){
    cal_penalty[i,j] <- if(i==j){cal_penalty[i,j]=35000*i-25000*j} else if(i>j){cal_penalty[i,j]=35000*j-20000*(i-j)-25000*j} else if(i<j){cal_penalty[i,j]=35000*i-25000*j} 
  }
}

for (i in 1:40) {
  poisson_cake_pen[i,1] = i # i=?? ?մ? ?? [i,1]=???? ????ũ ??
  poisson_cake_pen[i,2] = sum(cal_penalty[,i]*poisson_pdf)
  i=i+1
}

plot(poisson_cake_pen[,2])
which.max(poisson_cake_pen[,2])


##3
install.packages("MASS")
library(MASS)

setwd("D:/Dropbox/Dropbox/[2] ???????б? ?ڻ??Ŀ????? (2022)/1-2. 2022-2 ??????????/Assignments/#1")
#3-A
owego_agg <- read.csv("OwegoCreekFlow-1.csv", header=T)
agg<-aggregate(owego_agg$Flow, by=list(month=owego_agg$Month),FUN=mean)
barplot(agg$x,main="Monthly Hydrograph",xlab="Months", ylab="Monthly average flow(cfs)",names.arg = agg$month)
agg$month[which.min(agg$x)]

#3-B Monthly Hydrograph of Month=8
owego_min_month <- owego_agg$Flow[owego_agg$Month==8]

#3-C
hist(owego_min_month, main="Histogram of August Flows",xlab="Average Flow (cfs)")

#3-D
normal_model<- fitdistr(owego_min_month,"normal")
lognormal_model <- fitdistr(owego_min_month, "lognormal")
gamma_model <- fitdistr(owego_min_month, "gamma")

#3-E
normal_model$estimate
lognormal_model$estimate
gamma_model$estimate

normal_model$loglik
lognormal_model$loglik
gamma_model$loglik

##################################################################################
#3-F
AIC(gamma_model)
-2*gamma_model$loglik + 2*2
AIC(normal_model)
AIC(lognormal_model)
#Choose lognormal (Lowest AIC value)

#3-G P-P Plot for Lognormal Distribution
n<-length(owego_min_month)
p.theory<-plnorm(sort(owego_min_month),lognormal_model$estimate[1],lognormal_model$estimate[2])
nep <- (1:n)/(n+1)
plot(p.theory,nep,main="Lognormal P-P Plot",xlab="Theoretical Probability",ylab="Sample Probability")
abline(0,1,col="red")

#3-H
obs.breaks <- cut(owego_min_month, breaks=c(0,50,100,Inf))
obs.counts <- table(obs.breaks)
exp.probs<-c(plnorm(50,lognormal_model$estimate[1],lognormal_model$estimate[2]),
             plnorm(100,lognormal_model$estimate[1],lognormal_model$estimate[2])
             -plnorm(50,lognormal_model$estimate[1],lognormal_model$estimate[2]),
             plnorm(Inf,lognormal_model$estimate[1],lognormal_model$estimate[2])
             -plnorm(100,lognormal_model$estimate[1],lognormal_model$estimate[2]))
chisq.test(x=obs.counts,p=exp.probs)
