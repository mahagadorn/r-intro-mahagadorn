##mahagadorn
##LessonOne
##ProgrammingCourse
##October 31, 2016

##FUNCTIONAL PROGRAMMING

#R is a functional programming language
#we can use this to our advantage by writing fast, efficient code


##4.1
#Math is about functions
#'Functions are PERFECTLY REPRODUCIBLE
#'Input the same parameters and you will always get the same result
    #'Numbers don't have an internal state
    #'3 is always 3 
    #'also numbers dont have modifiers 3 is just 3 its not a large or small 3
    #'Therefore, if we can three in any way, it become another number

#'As a result we can refer to the number and the process of how to get that number in the same way
#'take five for example
    #' 3+2=5 "process"
    #' & 5=5 "number"
    #' The process and the number both five us the same result
    #' Therefore, they are interchangable

#' Functional programming relies on all of these concepts to give us faster code execution...
#' ....and different ways to think about problems
    #'Because there is no difference between function we're going to execute (3+2) and the result (5)..
    #'...our computer can use lazy evaluations
    #'this means they can delay the calculation of our results until the last possible second
    #'LAZY EVALUATION, often happes behind the scenes, but sometimes you can see it in action 


#' Here is an example

my.fun <- function(x){
  return(x)
  this.nonsense.line(is, lazily, never.evaluated)
}


#'computers can distinguish between MUTABLE (changeable) and IMMUTABLE (constant) types
#'R handles this behind the scenes
#'but by breaking our problems down into sub-problems whose results arent DEPENDENT on one another we can run PARALLELS



##'4.2 First Functional Steps: the apply family

#'apply family
    #' family of functions that allow us to take an input vector of some kind...
          #'(list of vectors, data frame [remember thats a list of vectors] of columns/vectors)
    #' ...and apply a function to each element of that vector


##' 4.2.1 One input vector: 1,s, and v

#lapply
input<-list(1:10, letters[1:6], c(TRUE,FALSE,TRUE))
lapply(input, length)

#' returns lengths of the individual vectors

# [[1]]
# [1] 10
# 
# [[2]]
# [1] 6
# 
# [[3]]
# [1] 3


#' what did we do?
#' we took the functioin length() and we APPLIED it to all the vectors
#' there are three apply family members that work like this
    #' DISTINGUISHED BY RETURN TYPE
    

  #' lapply() ===RETURNS A LIST
  
  #' sapply() ===RETURNS A SIMPLIFIED VERSION OF WHAT VALUE IT GETS
        #'return vectors of length=1 then sapply returns a list
        #'if the return is of the same length and type you get a matrix
  
  #' vapply()===returns vector of whatever type you specify
        #' its just like sapply, only by specifying what you want back its quicker and safer
  

#' More than one input: m, a, t

  #' mapply=== it takes two or more inputs, and applies a function to both of them
  

  mapply(paste, letters[1:3], letters[2:4], letters[3:5])

  # a       b       c 
  # "a b c" "b c d" "c d e" 
  
  #'FUNCTIONALLY-->SO THAT  YOU CAN PROVIDED ANY NUMBER OF INPUT VARIABLES and it applies to them all

  
#'APPLY
  #' this is the mother of the family
  #' intended to be applied over an array
      #' for its purposes: a matrix is just an array with only 2 demensions
      #' Since these objects have dimensions, you need to specify the dimension along with what you want to apply infut to
      #' row-cuddle   Rows come before columns
  
  input <- matrix(1:4, 2)
  input
  # [,1] [,2]
  # [1,]    1    3
  # [2,]    2    4
  
  apply(input, 1, sum)
  # [1] 4 6
  
  apply(input, 2, sum)
  # [1] 3 7
  
  
  
  
  
  
  












































