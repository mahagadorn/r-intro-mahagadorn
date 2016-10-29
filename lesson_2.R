##mahagadorn
##LessonTwo
##ProgrammingCourse
##October 24, 2016

#ControlFlow

value <- 5
if(value <= 5){
  print("Good news!")
}
#[1] "Good news!"

value <- 9
if(value <= 5){
  print("Good news!")
}
#nothing was printed because nine is greater than 5 so it didn't execute the block

value <- 2
if(value <= 5){
  print("Good news!")
}
#[1] "Good news!" it worked

value <- -5
if(value <= 5){
  print("Good news!")
}
#[1] "Good news!" it worked because -5 is less than 5

#if, else statements
value <- 5
if(value < 5){
  print("Less than five!")
} else {          #notice that else is on the same line as the end bracket
  print("Greater than or equal to five!")
}

value <- 3
if(value < 5){
  print("Less than five!")
} else {          #notice that else is on the same line as the end bracket
  print("Greater than or equal to five!")
}
#this happened because three is less than five (the if statement) so the block of code was executed for the if statement and the else was truncated

#> if(value < 5){
#+   print("Less than five!")
#+ } else {          #notice that else is on the same line as the end bracket
#  +   print("Greater than or  ..." ... [TRUNCATED] 
#            [1] "Less than five!"

value <- 6
if(value < 5){
  print("Less than five!")
} else {          #notice that else is on the same line as the end bracket
  print("Greater than or equal to five!")
}
#the if statement was not met therefore we moved on to the else statement
#else conditions were met therefore the block was executed

#dont necessarily need the brackets
value <- 5
if (value < 5)
  print("Less than five!")
#no print return
value <- 4
if (value < 5)
  print("Less than five!")
#4 is less than 5; therefore, the text less than five is printed

#Loops 2.2
#sometimes we want a computer to do something repeatedly for us until we are satisfied with a particular result
value <- 0
while(value <= 10){
  value <- value + 1
}
print("Finished!")
#[1] "Finished!"

#this loop continuously executes a block of code with a ingle instruction until the condition is NO LONGER SATIFIED
#for this example the code will continuously be executed until the value is 11
#this is because 11 is greater than 10 and this is the first time this happens in our loop

#MAH DO NOT RUN THE FOLLOWING CODE BECAUSE ITS AN INFINITE LOOP
#value <- 0
#while(value <= 10){
#  value <- value - 1
#}
#print("Finished!")

#Instead of the while loop, some prefer the for loops whenever possible

for(i in 1:10){ #"i" is nothing but an index, really this can be anything as long as you call it appropriately, however, "i" is the conventional
  print(i)
}
  #will return the values 1-10

#not best to loop directly over the vector of interests
#loop indices should be used
#this essentially means that you will loop over the indices not over the values

#example of not the best way to do it but okay
for(each in letters){  #notice how its calling the letters vector values directly
  print(each)
}
#this will list all the elements of the vector letters

#BUT HERE IS THE BETTER WAY TO DO THIS 
for(i in 1:length(letters)){ #i is the index
  print(letters[i])
}

#example of a potential issue with not having the index

#bad form
unchanged <- changed <- c("a","c", "e") 
for (each in changed) { #no index is used here
  each <- toupper (each)
}
identical(changed, unchanged) #return is TRUE; therefore, no change has happened


for (i in 1:length(changed)){
  changed[i] <- toupper(changed[i])
}
identical(changed,unchanged) #return is false, therefore a change has happened
#here is the proof
changed 
      #[1] "A" "C" "E" compared to...
unchanged
      #[1] "a" "c" "e"

#Advanced Looping 2.3
#sometimes you need to BREAK out of a loop!!!!
#maybe this is because you have achieved the result that you were looking to achieve

#example

value <- 0 #1 >value #[1] 0; assigns value as zero
max.iter <- 1000 #2 >max.iter #[1] 1000; assigns max.iter as 1000
goal <- 2 #3 >goal [1] 2; goal is now assigned as 2
for (i in 1:max.iter){ #4 for the index i in 1 through the max iterations (1000); #10 #draw at most 1000 times until we find a number greater that 2
  value <- rnorm(1) #5 draw a random number from a distribution centered at zero
  if(value > goal){ #6 we want to stop (BREAK out of the loop) once we get above 2
    break #7 R knows once it sees this to immediately break out of the loop its in and continue with the script
  } #8
} #9
if (i == max.iter){ 
  stop("Max iteration reached!") #11
} #12


value <- 0 
max.iter <- 1000
goal <- 20 
for (i in 1:max.iter){ 
  if(value > goal){ 
    break 
  }
}
if (i == max.iter){ 
  stop("Max iteration reached!")
}
#Error: Max iteration reached!
#AWESOME-->once we increase the goal to 20 aka find a number greater than 20 we reach max iterations  
  
value <- 3 
max.iter <- 1000
goal <- 20 
for (i in 1:max.iter){ 
  if(value > goal){ 
    break 
  }
}
if (i == max.iter){ 
  stop("Max iteration reached!")
}

#next loop
#allows you to skip one iteration of a loop and move straight on to the next one

value <- 0
threshold <- 0 #threshold for the values
for(i in 1:10){
  value <- rnorm(1)
  if(value <= threshold){
    next #skip to next itertion
  }
  print(value) #print only those values that are above the threshold 0
}
#return [1] 0.7565825, [1] 0.8709817, [1] 0.737181, [1] 1.384293


#lets see what happens if we increase threshold to 2 an increase the index
value <- 0
threshold <- 2 #threshold for the values
for(i in 1:100){
  value <- rnorm(1)
  if(value <= threshold){
    next #skip to next itertion
  }
  print(value) #print only those values that are above the threshold 0
}
#return [1] 2.685955, [1] 2.448723

#Functions 2.4
#function() tells R that we are defining a new function
#functions make it easy to reuse your code

#this is where we actually write the function (here called double)
double <- function(x){ 
  doubled <- x * 2 #this is what we are saving the value as??? maybe???
  return(doubled) #is the way that we kill a function and its last "dying breath" is the return
}
double(16) #16 is the value, that we actually want to double
#return is [1] 32

#lets play around with the values (x) that we are inputting into our function

double(100) #return: [1] 200
double(4) #return: [1] 8
double(25) #return: [1] 50

#call-by-value
#remember that what happens to objects in the function, stays in the function
#in other words if we have "x" as a variable in the function and the global environment
#what happens to x in the function won't save as "x" outside of the function

#here is a way of looking at it
x <- 4
double <- function (x){
  x <- x * 2
  return(x)
}
double(x)
print(x)
#COOL! so we can see the above principles spelled out here
#so, even after we double x (return: 8) the x value is left unaltered (4)


#Arguments and Invisibility 2.5
#when calling a function we can provide specific values for the arguments of the function using their names, position, or with defaults

change.text <- function(text, before="Will says", after="", upper=FALSE){
  text <- paste(before, text, after)
  if(upper)
    text <-toupper(text)
  return(text)
}

#making use of default
change.text("brush your teeth") #[1] "Will says brush your teeth" #default for all others but text
change.text("brush your teeth", "Will's mum says") #[1] "Will's mum says brush your teeth "
change.text("ALRIGHT MUM", upper=TRUE) #[1] "WILL SAYS ALRIGHT MUM "


#match.arg specifies that arguments can only be one of several options
change.text <- function(text, person=c("will","mum")){
  person <- match.arg(person)
  text <- paste(person, "says", text)
  return(text)
}

change.text("hi") #default the first element [1] "will says hi"
change.text("hi", "will") #[1] "will says hi"
change.text("hi","dave") # Error in match.arg(person) : 'arg' should be one of “will”, “mum” 
#ERROR because the wrong arguments are being used


#Invisible Return
bond.james.bond <- function(x) invisible(x)
felix.leiter <- function(x) return(x)
bond.james.bond(10)
print(secret)
felix.leiter(10) #only this value is returned






################################################
## Exercises ###################################
################################################


#1)
for(i in 20:10){ #specified the number range
  print(i) #tells it to print
}

#2)
for(i in 20:10){ #saying for all numbers between 20 and 10
  if(i %% 2){ #modulus special operator; line says "when value of i has a remainder of zero when divided by 2, then we enter the if statment
  next
}
  (print(i))
}
#%% is a modulus or binary special operator token. This is used as an arithmetic token. 
#here the %% what gives us the "even" numbers

#3)
isPN.fun <- function(x){ 
  for(i in (x-1):2){  #translation: some number(index) in the range of (x-1) all the way to 2---so if x is 5 it's 5-1:2 or 4,3,2
    remd <- x %% i    #store the remainders of x divided by the index
  if(x < 2){          #THIS IS IMPORTANT: You added this in late because your function was crashing a i=1
    return(FALSE)
  }  
  if(remd == 0){      #if the remainder is 0 its not a prime number; prime number= divisible by itself and one. So x-1 (aka one less than itself) to 2 (so not one); if either of these returns a 0 that means it's divisible by more than itself and one
    return(FALSE)
    }  
  }
  return(TRUE)
}

isPN.fun(7)
isPN.fun(8)

#Dr.Pearse helped to trouble shoot this
#His recommendation was to use the index to your advance when troubleshooting loop errors
#simply type "i" in the console, this will tell you the last iteration that it made it through
#with the error, it crashed at one because i in 1:20 was used (see question below) the one was taken in to consideration and it blew up my function
#remember that little tid bit of help


#4) Write a loop that prints out the numbers from 1 to 20, printing “Good: NUMBER” if the number is
#divisible by five and “Job: NUMBER” if then number is prime, and nothing otherwise.

#first write a function that does divisibility by five
d5.fun <- function(x){
  if (x %% 5 == 0)
    return(TRUE)
  return(FALSE)
}

#function for prime numbers already written "isPN.fun()"

for(i in 1:20){
  if(d5.fun(i)){
    print(c("Good", i))
  } else if (isPN.fun(i)){
    print(c("Job", i))
  }
}

#5)
#A biologist is modelling population growth using a Gompertz curve, which is defined as y(t) = a.e−b.e−c.t
#where y is population size, t is time, a and b are parameters, and e is the exponential function. Write
#them a function that calculates population size at any time for any values of its parameters.

#y=population size
#t=time
#a&b=parameters
#exponetial function

#pseudo-code
#popsize.fun <- function(x){
#startloop(input the equation here: translated--y(of time) equal to a times exponential function containing -b times exponential function containing -c times time factor)
#equation would look like this (y(t) <- a*exp(-b*exp(-c*t)))
#}
popsize.fun <- function(a,b,c,t,...){ #these are our arguments
  psize=a*exp(-b*(exp(-c*t)))    #e is exponential = exp() 
    return(psize)
}

PS.ex1 <- popsize.fun(a=1,b=2,c=3,t=50) #example for random numbers
print(PS.ex1) #[1] 1

PS.ex2 <- popsize.fun(a=10,b=5,c=11,t=100)  #changing numbers to make sure it works
print(PS.ex2) #[1] 10


#6) The biologist likes your function so much they want you to write another function that plots the progress
#of the population over a given length of time. Write it for them.

TimeRec <- seq(0,100, by =4)  

#function
plotPopSize.Fun <- function(a,b,c,t,...){
    for(i in 1:length(TimeRec)){
      pop.growth <- popsize.fun(a,b,c,t,..)
    }
    plot(TimeRec, pop.growth,
      xlab = "Time Recordings (in years)", 
      ylab = "Population Size (in millions)", 
      main = "Gompertz Curve: Population Size Changes Over Time")
} 

PopPlot<- plotPopSize.Fun(a=500, b=95, c=0.1, t=TimeRec) 


#7) #The biologist has fallen in love with your plotting function, but want to colour y values above a as blue,
#and y values above b as red. Change your function to allow that.

TimeRec <- seq(0,100, by =2) 

#this works to differentiate between colors
plotPopSizeCol.fun <- function(a=a,b,c,t){
  colors <- rep("black", length(TimeRec))  #will make it ALWAYS the same length as TimeRec(or time factor)
  pop.growth <- TimeRec
  for(i in 1:length(TimeRec)){
    pop.growth <- popsize.fun(a,b,c,t,..)
      if(pop.growth[i] > a){
          colors[i] <- "blue"
      } 
      if(pop.growth[i] > b){
          colors[i] <- "red"
      }
  }
  plot(TimeRec, pop.growth,
       xlab = "Time Recordings (in years)", 
       ylab = "Population Size (in millions)", 
       main = "Gompertz Curve: Population Size Changes Over Time",
       col= colors)
} 

ColPlotPopSize<- plotPopSizeCol.fun(a=500, b=95, c=0.10, t=TimeRec) 


# 8 You are beginning to suspect the biologist is taking advantage of you. Modify your function to plot in
# purple any y value that’s above a and b. Hint: try putting 3==3 & 2==2 and 3==4 | 2==2 into an if
# statement and see what you get. Using this construction may make this simpler.

#MAH come back to this


#9 Write a function that draws boxes of a specified width and height that look like this (height 3, width 5):
  # *****
  # *   *
  # *****

#rect() function??? no because I can't make it with astericks


#function
ImABox <- function(width,height){
  ast.vect <- c("*")
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #saying repeat asteric vector the same number of times as width
  cat("\n")     #saying to go to the next line, if you don't do this it won't move to the middle section
    for (i in width){
      cat(ast.vect, paste(rep(" ", times=(1/2*(width-2)))), ast.vect) #something is wrong here
  }
  cat("\n") 
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #last line
}

ImABox(5,3)

# 10. Modify your box function to put text centred inside the box, like this:
  # *************
  # *           *
  # * some text *
  # *           *
  # *************

#okay so list things we need to do.
#we need to take into consideration how we can to add text
      #should be able to do this by simply removing the rep function and using only paste???
#also need to figure out how to make sure the text isn't to large for the box?
      #nchar() counts the number of characters in a vector
      #maybe we can do value of width minus number of characters in the text?
      #nchar(text) > width-2 This should be a true or fa1se statement. Would make it okay for an if loop
      #if else would allow us to say if it is greater than this STOP but if not then keep going
      

TextBox <- function(width, height, text){
  #Define our vectors....Reminder, you had this built into your loops and they became WAY to chunky! so you removed them and placed them up here
  ast.vect <- c("*")
  roomLR <- (((width-2)-nchar(text))/2) #I think this will count the number of characters???
  RMLines <- height-3
  Top <- RMLines/2
  Bottom <- RMLines/2

  
   #saying repeat asteric vector the same number of times as width    #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in width){
      if(nchar(text) >= width-3) {
        print("Long winded? Your text has too many characters!")
      } else{
        #making vectors
        space <- c(ast.vect, paste(rep("", times=(width-3))), ast.vect, "\n")
        Lside <- rep("", times= (((width-3)-nchar(text))/2))
        Rside <- rep("", times= (((width-3)-nchar(text))/2))
        textline <- c(ast.vect, Lside, text, Rside, ast.vect, "\n")
        #Top Line of Astericks  
        cat((noquote(paste(rep(ast.vect, times = width), collapse = ""))), "\n")
          #Start loop for spaced
          for(i in 1:Top){
            cat(space)
          }
            cat(textline)
          #Another loop for Space
          for(i in 1:Bottom){
            cat(space)
          }
        #Bottom Line of Astericks  
        cat((noquote(paste(rep(ast.vect, times = width), collapse = ""))), "\n")
    }
  }
}


TextBox(23, 13, text="Keep Calm, Code On!")


#11
# 11. Modify your box function to build boxes of arbitrary text, taking dimensions specified in terms of
# dimensions, not the text. For example, box("wdp", 3, 9, "hey") might produce:

# wdpwdpwdp
# w  hey  w
# wdpwdpwdp

ArbBox <- function(lets, height, width, text){
  lets <- c(lets)
  letsRep <- noquote(rep(lets, times=(width/3)))
    for (i in width){
      if(nchar(text) > width-2){
        print("Sorry friend, text is too long")
      } else{
        firstlet <- letsRep[1]
        Lside <- rep("", times= (((width-3)-nchar(text))/2))
        Rside <- rep("", times= (((width-3)-nchar(text))/2))
        cat(letsRep, sep="", "\n")
          for(j in firstlet){
            textline <- c(firstlet, Lside, text, Rside, firstlet)
            cat(textline, collapse = "", "\n")
        }
        cat(letsRep, sep="", "\n")
    }
  }
}    


        
ArbBox(lets = c("w","d","p"), height = 3, width = 12, text = "hey")







        
        else{ (width > 3)
               space <- c(firstlet, paste(rep("", times=(width-3))), firstlet, "\n")
               #Firstline
               cat(letsRep, sep="", "\n")
                  for(i in 1:Top){
                    cat(space)
               }
                  for(j in firstlet){
                      cat(textline, "\n")
               }
                  for(k in 1:Bottom){
                    cat(space)
              }
                cat(letsRep, sep="", "\n")
           }
       }    
    }   
}      
        
        
        
        
        else{ 
        space <- c(ast.vect, paste(rep("", times=(width-3))), ast.vect, "\n")
        Lside <- rep("", times= (((width-3)-nchar(text))/2))
        Rside <- rep("", times= (((width-3)-nchar(text))/2))
        textline <- c(ast.vect, Lside, text, Rside, ast.vect, "\n")
      }
        
      }
    }


}
  
lets <- c("w", "d", "p")
  
  
  
  }



width=9
lets <- c("w", "d", "p")
cat(letsRep, sep="")


ast.vect <- c("*")
roomLR <- (((width-2)-nchar(text))/2) #I think this will count the number of characters???
RMLines <- height-3
Top <- RMLines/2
Bottom <- RMLines/2















