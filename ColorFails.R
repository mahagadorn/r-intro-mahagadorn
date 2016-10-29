plotPS.Fun <- function(a,b,c,t,...){
  plot(TimeRec, popsize.fun(a,b,c,t=TimeRec),
       xlab = "Time Recordings", 
       ylab = "Population Size", 
       main = "Population Size Changes Over A Given Time based on Gompertz Function")
}

TimeRec <- seq(0,10, by =2)
PSTimePlot<- plotPS.Fun(a=.8, b=.2, c=1.5, t = TimeRec)

colors(
)


#so we need to make colors above a=blue
#color above b=red

colors


popsize.fun.colors <- function(a,b,c,t,...){ #these are our arguments
  if(y <- a*exp(-b*(exp(-c*t)))) {
    return(y)
  } 
}

plotPS.Fun.colors <- function(a,b,c,t,...){
  plot(TimeRec, popsize.fun(a,b,c,t=TimeRec,...),
       xlab = "Time Recordings", 
       ylab = "Population Size", 
       main = "Population Size Changes Over A Given Time based on Gompertz Function",
       points()
    }
}

TimeRec <- seq(0,10, by =2)
PSTimePlot<- plotPS.Fun(a=.8, b=.2, c=1.5, t = TimeRec)
yR <- popsize.fun(a,b,c,t=TimeRec) > a






plotPS.Fun.colors <- function(a,b,c,t,...){
  plot(TimeRec, popsize.fun(a,b,c,t=TimeRec),
       col= popsize.fun(a,b,c,t=TimeRec) > a
       xlab = "Time Recordings", 
       ylab = "Population Size", 
       ylim = c(0,1.0),
       main = "Gompertz Curve: Population Size Changes Over Time")
}

TimeRec <- seq(0,10, by =2)
PSTimePlot<- plotPS.Fun.colors(a=.8, b=.2, c=1.5, t = TimeRec)
