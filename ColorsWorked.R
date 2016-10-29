#works
testitout<- function(a,b,c,t,...){
  plot(TimeRec, popsize.fun(a,b,c,t=TimeRec,...),
       xlab = "Time Recordings", 
       ylab = "Population Size",
       ylim = c(0.6,1.2),
       main = "Gompertz Curve: Population Size Changes Over Time",
       col= ifelse (y > a, "blue", "red"))
}

TimeRec <- seq(0,10, by =1)
test<- testitout(a=1, b=.2, c=10, t = TimeRec)

#doesnt
Test2color<- function(a,b,c,t,...){
  plot(TimeRec, popsize.fun(a,b,c,t=TimeRec,...),
       xlab = "Time Recordings", 
       ylab = "Population Size",
       ylim = c(0,1),
       main = "ahjaksdhfaslkdfhakjsdfhaskjdf")
  for(i in y)
    if(i > a){
      col="blue"
    } else {
      col="red"
    }
}

TimeRec2 <- seq(0,10, by =1)
test2<- Test2color(a=.1, b=.7, c=1.15, t = TimeRec)

#doesnt
Test3color<- function(a,b,c,t,...){
  plot(TimeRec, popsize.fun(a,b,c,t=TimeRec,...),
       xlab = "Time Recordings", 
       ylab = "Population Size",
       ylim = c(0,1),
       main = "ahjaksdhfaslkdfhakjsdfhaskjdf")
  for(i in y)
    if(y > a){
      col="blue"
    } else {
      col="red"
    }
}

TimeRec3 <- seq(0,10, by =1)
test3<- Test3color(a=.1, b=.7, c=1.15, t = TimeRec)