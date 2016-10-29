popsize.fun.colors <- function(a,b,c,t,...){ #these are our arguments
  if(y <- a*exp(-b*(exp(-c*t)))) {
    return(y)
  } 
}


plotPS.Fun.colors <- function(a,b,c,t,...){
  plot(TimeRec, popsize.fun(a,b,c,t=TimeRec,...),
       xlab = "Time Recordings", 
       ylab = "Population Size",
       ylim =  ylim = c(0,1.0),
       main = "mmm",
       col= ifelse (y < a, "blue", "red"))
}

TimeRec <- seq(0,10, by =2)
PSTimePlot<- PS.funandplot(a=.8, b=.2, c=1.5, t = TimeRec)






PS.funandplot <- function(a, b, c, t, plot, data.frame,...){
  if(y <- a*exp(-b*(exp(-c*t)))) {
    values <- y
    return(values)
  } 
}

TimeRec <- seq(0,10, by =2)
PSTimePlot<- PS.funandplot(a=.8, b=.2, c=1.5, t = TimeRec)