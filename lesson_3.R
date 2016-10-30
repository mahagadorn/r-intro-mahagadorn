##mahagadorn
##LessonThree
##ProgrammingCourse
##October 26, 2016

#Classes and objects-orientation

#3.1
#'object orientation' is the use of classes to help simplify programming
#continuously reread the first paragraph--relates it back to a great example (chairs)
#O-O programmers give every VARIABLE(object) a CLASS
#they write FUNCTIONS--methods-- that can be applied to these SPECIFIC CLASSES 
#Grouping things like this helps programmers save time and effort
#Ex. programmer writes a function that plots some data...this function can include seperate METHODS for when users calls that
#'...function with a data frame vs a matrix
#this lets R figure out what function to call on behalf of user
#NOTE: we will be using implementation S3 for our work
#in S3 we write METHODS for a particular CLASS (METHOD is a FUN that applies only to a particular CLASS) but we have no way to
#...specify what PROPERTIES(slot---for chairs weight or height) a particular CLASS should have



#3.2.1 Dexter is an instance of a Dog
#here we are going to walk through an example of how to make a dog CLASS
#also write methods for the dog CLASS
#and learn to hierarchically nest CLASSES (ie--inheritance; a dog is a mammal)


#in R CLASSES don't have a formal definition...but we can make an object of a certain CLASS 
#example

dexter <- list(length=60, weight=40, breed="mongrel") #save the list as dexter
class(dexter) <- "dog"  #this line is all we need to make dexter a class 

class(dexter) #[1] "list"

#note that there is no way to specify what slots (properties) an object of CLASS (here dog) should contain
#always best to write out what slots(properties) a CLASS should have


#OR write a function make.class or new.class function that will make dog with weight and breed slots
#see the following

new.dog <- function(weight,breed){  #weight and breed, here arguments, but they are the slots
  output <- list(weight=weight, breed=breed)  #output we want is a list containing weight and breed as
  class(output) <- "dog"  #we can classify the output as dog
  return(dog)   #return dog
}

class(new.dog)  #[1] "function"

#this function above is called a constructor

#3.2.2 CLASS METHODS
#'a METHOD is just a function
#'its a function that we associate with a particular CLASS
#'When writing a METHOD for a particular CLASS, you need to make sure the user has provided you with the right class if the first place

#'For Example

race <- function(first, second) {        #race is a function with the arguments first and second
  if(!inherits(first, "dog") | !inherits(second, "dog"))        #inherits purpose see below; saying first dog OR second dog
    stop("You haven't given me two dogs!")
  if(first$weight < second$weight){
    print("First dog won!")
    return(first)
  }
  print("Second dog won!")
  return(second)
}

class(race) #[1] "function"

#inherits indicates whether its first argument inherits from any other classes specied in the WHAT argment
    #if WHICH is true then an integer vector of the same legnth as WHAT is returned
    #each element indicates the position in class(x) matched by the element of WHAT
    #zero indicates no matches found
    #if WHICH is FALSE then TRUE is returned by inherits if any of the names in what match any CLASS

#reminder operator | AND & are logical operators
    #|= indicate logical OR   for example x|y means x OR y
    #& = indicates logical AND  for example x&y means x AND y





#3.2.3 Generic functions
#generic functions are extremely valuable
#these types of functions take essentially any kind of OBJECT, then dispatch that OBJECT(variable) to the 
#...correct METHOD (FUN) once they have identified the correct CLASS

#see they example below
#print is a generic function
#this is why it can take multiple types of OBJECTS (numeric, character, and data.frame) and succesfully print them

print
#function (x, ...)    the ... you already know but reminder--it means lots of other arguments are possible even w/o specification
#UseMethod("print")   
# <bytecode: 0x10b26b630>   this just means this is a 'compiled' function-->its underlying R code has been translated to machine code so it runs faster
# <environment: namespace:base>    means the function is defined in base R package

#lets try to define a method for dog
#first try to print dog

dog     #Error: object 'dog' not found
print(dog)     #Error in print(dog) : object 'dog' not found

#error message; let's fix this

print.dog <- function(x,...) {
  cat("This ", x$breed, "weighs ", x$weight, "kg/n")  #notice how we are putting in words and things to call
}

print.dog
# function(x, ...){
 # cat("This ", x$breed, "weighs ", x$weight, "kg\n")
# }


#we can also loop through the arguments
print.dog <- function(x,...){
  if(verbose==TRUE){
    cat("This ", x$breed, "weighs ", x$weight, "kg\n")
  } else cat("Woof!\n")
} 

print.dog

# function(x,...){
#   if(verbose==TRUE){
#     cat("This ", x$breed, "weighs ", x$weight, "kg\n")
#   } else cat("Woof!\n")
# }

#reminder--cat() simply means it produces output of an object, concatenates the representation
#converts arguments to character vectors, conccatenates them into a single characte vector and appends the give strings


###Now its time to write our own generic functions
#not looking forward to this
# as the lovely Panders used to tell you...keep calm and program on...and then I cry :)

ask.dog <- function(x) UseMethod("askdog")      #new generic function called ask.dog
askdog.default <- function(x) return("Woof! No-idea! Woof")    #fall through default
askdog.numeric <- function(x) return("Woof! A number! Woof")   #method for class numeric
askdog.dog <- function(x) return("Woof! A friend Woof!")       #method for class  ?

Fun3 <- function(x) return(3)
#this is a boring function but it still works
#returns three regardless of what x is hahaha...which i guess is the point

#tinker around a bit with this later


#3.2.4 Multiple Inheritance
#sometimes objects can be of more than one CLASS
#multiple inheritances lets us recognise this

#back to our old friend dexter

dexter <- list(lenght = 60, weight = 40, breed ="mongrel")  #defining dexter as a list
class(dexter) <- c("dog", "mammal")   #dexter is a class--> dog and mammal
brain <- list(length = 30, weight = 40) #now we have our friend brian
class(brain) <- c("mongoose", "mammal")  #brian is a mongoose but that is also a mammal
print.mammal <- function(x,...) cat("What a great mammal !\n") #print it

print.mammal(dexter)
print.mammal(dexter, brian)



################################################
## Exercises ###################################
################################################

#1) Implement a cat class, complete with race and print methods.
#First step: write a function that will make cat a class
new.cat <- function(color, weight, breed){       #these are the slots
  output <- list(color=color, weight=weight, breed=breed)  #saying we want the output to be a list
  class(output) <- "cat"  #for this our output is going to be the specific cat (incidence of class cat)
  return(output)    #return just gives us the output 
}

#here are our incidences
tonks <- new.cat(color = "EtBr Orange", weight = 40, breed = "mixed")  #opposite of usual. need cat name first <- new.cat
darwin <- new.cat(color = "Gray", weight = 50, breed = "tuxedo")

#write a function for race
race.fun <- function(first, second){      #first and second are cat names (object names)
  if(!inherits(first, "cat") | !inherits(second, "cat"))    
    stop("You haven't given me two cats!")
  if(first$weight < second$weight){
    print("First cat won!")
    return(first)
  }
  print("Second cat won!")
  return(second)
}

race.fun(tonks, darwin) #tonks is first cat here....she is lighter; therefore, she should win the race...the lighter cat wins the race
race.fun(darwin, tonks) #switch it up so that the plump cat is first, to making sure all is working well

#PrintFunction
print.cat <- function(x,...){
  cat("This", x$color, "colored cat weighs", x$weight, "lbs.", "Good things it's a", x$breed, "breed, people like that kind of cat!\n")
}
print.cat(tonks)


#2) Implement a point class that holds x and y information for a point in space.
#function
new.point <- function(x, y){
  output <- list(x=x, y=y)
  class(output) <- "point"
  return(output)
}

#print.function
print.point <- function(x,...){
  cat("For this point,",x$x,"and",x$y,",are the coordinates.\n")
}

pointA <- new.point(1, 9)
pointB <- new.point(4, 3)
print.point(pointA)
print.point(pointB)


#3) Write a distance method that calculates the distance between two points in space. 

#method
dist.method <- function(pointA, pointB, ...){
  if(!inherits(pointA, 'point') | !inherits(pointB, 'point'))
    stop(noquote("WARNING: You have not given me two points to work with!!!"))
  xSQ <- (pointB$x - pointA$x)^2
  ySQ <- (pointB$y - pointA$y)^2
  Dist <- round(sqrt(xSQ+ySQ), digits=1)
  if(Dist !=0){
    print(noquote("The distance between the two points is...."))
    return(Dist)
  } 
  print(noquote("Warning: Distance between two points was zero. You should really look into this!\n"))
  return(Dist)
}

dist.method(pointA, pointB)

pointA <- new.point(1, 9)
pointB <- new.point(4, 3)

#Looks like this works (AND THE CROWD GOES WILD)

#I do not want this to be uncommented, but make it know I tried this to see if the return would print out right and it looks like it does.
#pointA <- new.point(1, 9)
#pointB <- new.point(1, 9)
#dist.method(pointA, pointB)
# [1] "Warning: Distance between two points was zero. You should really look into this!\n"
# [1] 0




#4 Implement a line class that takes two point objects and makes a line between them.

#we already have a point class(so we can use this to make our points "points")???
#no make new

#Make the class
new.line <- function(x, y){
  output <- list(x=x, y=y)
  class(output) <- "line"
  return(output)
}

#method for plotting the line 
plot.line <- function(start.point, end.point, ...){
    if(!inherits(start.point, 'line') | !inherits(end.point, 'line')) {
      stop(noquote("Something is not right, recheck your classes!!!"))
  } else{
      plot(NA, xlim=c(0,(end.point$x*(2*(end.point$x)))), ylim=c(0,(end.point$y*(2*(end.point$x)))), xlab="x", ylab="y")
      segments(start.point$x, start.point$y, end.point$x, end.point$y)
      points(start.point$x, start.point$y, pch=15, col="red")
      points(end.point$x, end.point$y, pch=15, col="blue")
  }
}
 
#Testing it out 
start.point <- new.line(1, 9)
end.point <- new.line(4, 3)
plot.line(start.point, end.point)

#This is awesomse so I'm testing it again!
start.point3 <- new.line(15, 15)
end.point4 <- new.line(10, 2)
plot.line(start.point3, end.point4)

start.point5 <- new.line(50, 100)
end.point6 <- new.line(30, 50)
plot.line(start.point5, end.point6)


#Talk to will about what he would do for the y and x lim on the presetup



#5 Implement a polygon class that stores a polygon from point objects. Hint: a polygon is really just a
#  load of lines.


Poly.Line <- function(x, y){
  output <- list(x=x, y=y)
  class(output) <- "Polygon Line"
  return(output)
}


Line.W <- Poly.Line(1,1)
Line.X <- Poly.Line(1,4)
Line.Y <- Poly.Line(4,4)
Line.Z <- Poly.Line(4,1)


#method for plotting the line 
polygon.lines <- function(Line.W, Line.X, Line.Y, Line.Z, ...){
  if(!inherits(Line.W, 'Polygon Line') | !inherits(Line.X, 'Polygon Line') | !inherits(Line.Y, 'Polygon Line') | !inherits(Line.Z, 'Polygon Line')) {
    stop(noquote("Oops, you can't generate a Polygon with those inputs!!!"))
  } else{
    plot(NA, xlim=c(0,(Line.Z$x*(2*(Line.Z$x)))), ylim=c(0,(Line.X$y*(2*(Line.X$x)))), xlab="x", ylab="y")
    segments(Line.W$x, Line.W$y, Line.X$x, Line.X$y, lwd=2)
    segments(Line.Y$x, Line.Y$y, Line.Z$x, Line.Z$y, lwd=2)
    segments(Line.W$x, Line.W$y, Line.Z$x, Line.Z$y, lwd=2)
    segments(Line.X$x, Line.X$y, Line.Y$x, Line.Y$y, lwd=2)
    points(Line.W$x, Line.W$y, pch=20, col="darkorchid1")
    points(Line.X$x, Line.X$y, pch=20, col="deepskyblue2")
    points(Line.Y$x, Line.Y$y, pch=20, col="darkorange")
    points(Line.Z$x, Line.Z$y, pch=20, col="red")
  }
}


polygon.lines(Line.W, Line.X, Line.Y, Line.Z)


Line.W.2 <- Poly.Line(2,1)
Line.X.2 <- Poly.Line(3,4)
Line.Y.2 <- Poly.Line(4,4)
Line.Z.2 <- Poly.Line(4,1)


polygon.lines(Line.W.2, Line.X.2, Line.Y.2, Line.Z.2)

#holy cow dung it work!!! AWESOME!!!!



#6 Write plot methods for point and line objects.

#I think I already did this above so copy paste

#method for plotting a point
plot.point <- function(pointA, pointB, ...){
  if(!inherits(pointA, 'point') | !inherits(pointB, 'point')) {
    stop(noquote("You do not have two things of class point!!!"))
  } else{
    plot(NA, xlim=c(0,20), ylim=c(0,20), xlab="x", ylab="y", type = "p")
    points(pointA$x, pointA$y, pch=7, col="orange")
    points(pointB$x, pointB$y, pch=7, col="blue")
  }
}

#testing it out
pointA <- new.point(1, 9)
pointB <- new.point(4, 3)
plot.point(pointA, pointB)


#method for plotting a line
plot.line <- function(start.point, end.point, ...){
  if(!inherits(start.point, 'line') | !inherits(end.point, 'line')) {
    stop(noquote("Something is not right, recheck your classes!!!"))
  } else{
    plot(NA, xlim=c(0,(end.point$x*(2*(end.point$x)))), ylim=c(0,(end.point$y*(2*(end.point$y)))), xlab="x", ylab="y")
    segments(start.point$x, start.point$y, end.point$x, end.point$y)
    points(start.point$x, start.point$y, pch=15, col="red")
    points(end.point$x, end.point$y, pch=15, col="blue")
  }
}

#Testing it out 
start.point <- new.line(1, 9)
end.point <- new.line(4, 3)
plot.line(start.point, end.point)



# 7. Write a plot method for a polygon. Hint: if this isn’t trivial, you’re doing something wrong.


#method for polygon (many) lines
polygon.lines <- function(Line.W, Line.X, Line.Y, Line.Z, ...){
  if(!inherits(Line.W, 'Polygon Line') | !inherits(Line.X, 'Polygon Line') | !inherits(Line.Y, 'Polygon Line') | !inherits(Line.Z, 'Polygon Line')) {
    stop(noquote("Oops, you can't generate a Polygon with those inputs!!!"))
  } else{
    plot(NA, xlim=c(0,(Line.Z$x*(2*(Line.Z$x)))), ylim=c(0,(Line.X$y*(2*(Line.X$x)))), xlab="x", ylab="y")
    segments(Line.W$x, Line.W$y, Line.X$x, Line.X$y, lwd=2)
    segments(Line.Y$x, Line.Y$y, Line.Z$x, Line.Z$y, lwd=2)
    segments(Line.W$x, Line.W$y, Line.Z$x, Line.Z$y, lwd=2)
    segments(Line.X$x, Line.X$y, Line.Y$x, Line.Y$y, lwd=2)
    points(Line.W$x, Line.W$y, pch=20, col="darkorchid1")
    points(Line.X$x, Line.X$y, pch=20, col="deepskyblue2")
    points(Line.Y$x, Line.Y$y, pch=20, col="darkorange")
    points(Line.Z$x, Line.Z$y, pch=20, col="red")
  }
}

Line.W <- Poly.Line(4,9)
Line.X <- Poly.Line(3,4)
Line.Y <- Poly.Line(20,4)
Line.Z <- Poly.Line(5,5)
polygon.lines(Line.W, Line.X, Line.Y, Line.Z)


#8  Create a canvas object that the add function can add point, line, circle, and polygon objects to.
#   Write plot and print methods for this class.


#so I need to create a canvas object...what is a canvas object?
#something that means it will be overarching? cover multiple things?

#what do all these objects have in common?
#they all have some sort of coordinates...but what a bout the circle. how does that work?
#just try and we will see what we need to alter later

#so all these have coordinates in common, i.e. (x,y), just like points
#remember an object is nothing but a variable and in our case we want this variable to have a class.

#I wrote this canvas function thinking about it as all of our canvas objects have an x,y in common
#with just an x and y we can generate a point, a line, and lines of a polygon
#the only extra tidbit needed would be for a circle where we need to include something such as a radius...so I put in the ...
# the ... gives us the freedom to add additional arguments to our class objects


canvas.class <- function(x,y,...){
  output <- list(x=x, y=y, ...=...)
  class(output) <- "canvas.object"
  return(output)
}


circleA.test <- canvas.class(x=1,y=1,r=.25)
polylineA.test <- canvas.class(x=1, y=1, x2=2, y2=2)


#print.function
print.canvas <- function(objects.cors,...){
  if(length(objects.cors) < 2){
    cat("Please recheck your input.")
  }
  if(length(objects.cors) == 2){
    cat("For this object, x = ",objects.cors$x,"and y = ",objects.cors$y,",are the coordinates.\n")  
  }
  if(length(objects.cors) == 3){
    cat("For this circle, x = ",objects.cors$x,", y = ", objects.cors$y,"and r = ", objects.cors$r,"are the coordinates.\n")
  }
  if(length(objects.cors) == 4){
    cat("For this line, x1 =" ,objects.cors$x, ", y1 =", objects.cors$y, "and x2 =", objects.cors$x2, ", y2 =" , objects.cors$y2, "are the coordinates.\n")
    }else{
      xcor<- c(objects.cors$x, objects.cors$x2, objects.cors$x3, objects.cors$x4)
      ycor <- c(objects.cors$y, objects.cors$y2, objects.cors$y3, objects.cors$y4)
      d.f. <- data.frame( xcor, ycor, row.names = c("Point 1", "Point 2", "Point 3", "Point 4"))
      print(d.f.)
  }
}

#assigning multiple inheritence

lineA.test <- canvas.class(x=1, y=1, x2=2, y2=2)
print.canvas(polylineA.test)

MultInher.tex <- c(x=1, y=1, x2=2, y2=2)
class(MultInher.tex) <- c("line", "canvas.object")  #assigned to two classes! #trying to do this so I can use plot



circleA.test <- canvas.class(x=1,y=1,r=.25)
print.canvas(circleA.test)

lineA.test <- canvas.class(x=1, y=1, x2=2, y2=2)
print.canvas(polylineA.test)

Polylines.test <- canvas.class(x=1, y=1, x2=2, y2=2, x3=3, y3=3, x4=4, y4=4)
print.canvas(Polylines.test)

Line.W <- Poly.Line(4,9)
Line.X <- Poly.Line(3,4)
Line.Y <- Poly.Line(20,4)
Line.Z <- Poly.Line(5,5)

#plot function

plot.canvas <- function(objects.cors,...){
  if(length(objects.cors) == 4){
    if(!inherits(start.point, 'line') | !inherits(end.point, 'line'))
    plot.line(Obj.line.point1, Obj.line.point2)
    }
  }
  

Obj.line.point1 <- canvas.class(5,4)
class(Obj.line.point1) <- c("line", "canvas.object")
Obj.line.point2 <- canvas.class(8,5)
class(Obj.line.point2) <- c("line", "canvas.object")

plot.canvas(Obj.line.point1, Obj.line.point2)
 
plot.canvas(Obj.line.point1)  
  
  
  
  
}


Line.W <- Poly.Line(4,9)
Line.X <- Poly.Line(3,4)
Line.Y <- Poly.Line(20,4)
Line.Z <- Poly.Line(5,5)


xcor<- c(Line.W$x, Line.X$x, Line.Y$x, Line.Z$x)
ycor <- c(Line.W$y, Line.X$y, Line.Y$y, Line.Z$y)
d.f. <- data.frame( xcor, ycor, row.names = c("Line W", "Line X", "Line Y", "Line Z"))


