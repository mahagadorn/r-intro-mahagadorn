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






#Exercises 2.6
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
PrimeFun <- function(n) {
   x <- n/1:n==n%/%1:n
  for(x in 1:x) {
    } if (sum(x)==2) { 
      print("PrimeNumber!") 
      } break {
  } else {
      print("NotPrime")
  }  
}
  
 #together this is looking at all the numbers from 1 through n;asking does some number divide by 1 through itself equal the quotient of the same number (one through the same number)
x=5
x <- ((n/1:n)==(n%/%1:n))
  if (sum(x)==2) {
    print("PrimeNumber!")
    break 
  } else {
    print("NotPrime")
  }
   











