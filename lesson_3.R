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








