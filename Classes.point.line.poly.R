#point class

new.point <- function(x, y){
  output <- list(x=x, y=y)
  class(output) <- "point"
  return(output)
}

#point method

plot.point <- function(point,...){
  plot(point$x, point$y, xlim=c(0, 20), ylim=c(0, 20), xlab="x", ylab="y")
}

plot.point(p1)



#lineClass
new.line <- function(pointA, pointB){
  if(!inherits(pointA, 'point') | !inherits(pointA, 'point')) {
    stop(noquote("Something is not right, recheck your classes!!!"))
  }
  output <- list(pointA=pointA, pointB=pointB)
  class(output) <- "line"
  return(output)
}


p1 <- new.point(1,5)
p2 <- new.point(6,8)
p3 <- new.point(4,6)


L1 <- new.line(p1, p2)
L2 <- new.line(p1, p3)
L3 <- new.line(p2, p3)


plot.line <- function(Line, ...){
  plot(NA, xlim=c(0, 20), ylim=c(0, 20), xlab="x", ylab="y")
  segments(Line$pointA$x, Line$pointA$y, Line$pointB$x, Line$pointB$y)
}


plot.line(L1)

x1=1 y1=5   &   x2=6 y2=8


plot.line <- function(Line, ...){
  plot(NA, xlim=c(0, 20), ylim=c(0, 20), xlab="x", ylab="y")
  segments(Line$pointA$x, Line$pointA$y, Line$pointB$x, Line$pointB$y)
}

L1 <- new.line(p1, p2)
L2 <- new.line(p1, p3)
L3 <- new.line(p2, p3)



plot.line(L3)


new.polygon <- function(Line1, Line2, Line3,...){
  if(!inherits(Line1, 'line') | !inherits(Line2, 'line') | !inherits(Line3, 'line')) {
    stop(noquote("Something is not right, recheck your classes!!!"))
  }
  output <- list(Line1=Line1, Line2=Line2, Line3=Line3)
  class(output) <- "line"
  return(output)
}

polygon1 <- new.polygon(L1,L2,L3)


#polygon
plot.polygon <- function(polygon,...){
  plot(NA, xlim=c(0, 20), ylim=c(0, 20), xlab="x", ylab="y")
  segments(polygon$Line1$pointA$x, polygon$Line1$pointA$y, polygon$Line1$pointB$x, polygon$Line1$pointB$y)
  segments(polygon$Line2$pointA$x, polygon$Line2$pointA$y, polygon$Line2$pointB$x, polygon$Line2$pointB$y)
  segments(polygon$Line3$pointA$x, polygon$Line3$pointA$y, polygon$Line3$pointB$x, polygon$Line3$pointB$y)
} 

L1 <- new.line(p1, p2)  #plotted
L2 <- new.line(p1, p3)
L3 <- new.line(p2, p3)



plot.polygon(polygon1)


p4 <- new.point(10,2)
p5 <- new.point(6,2)
p6 <- new.point(11,0)





L4 <- new.line(p4, p5)  #plotted
L5 <- new.line(p4, p6)
L6 <- new.line(p5, p6)


polygon2<- new.polygon(Line1=L4, Line2=L5, Line3=L6)

plot.polygon(polygon2)













