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
  
#' REMINDER A DATA FRAME IS JUST A LIST!!!!
#' YOU CAN NOT USE APPLY ON A DATA FRAME!!!
#' SINCE A DATA FRAME IS JUST A LIST ONLY USE SAPPLY OR LAPPLY TO EACH COLUMN OF THE DATA.FRAME
#' 
#' This makes sense....why
      #' because a dataframe may contain rows and columns of a different data type
      #' This is why apply won't work
      #' you cant apply something to the rows of a data.frame columns of a different data type
      #' 
      #' so for DF just use sapply or lapply
      #' think about it you cant apply() mean to a data.frame with categorical and numerical data
      #' just remember that a data.frame is nothing but a list that someone assigned CLASS "data.frame" to

  
  
#' tapply---takes an input vector that you want grouped in some way (according to another vector) and then applies your function to those groups

  
  input <- 1:10     #just a sequence of numbers 
  grouping <- rep(letters[1:2], 5)    #repeats a and b consecutively five times  [1] "a" "b" "a" "b" "a" "b" "a" "b" "a" "b"
  tapply(input, grouping, sum)
  
  # a  b 
  #25 30 
  

  
#'Quick Summary

  
  #'apply ---intended to be applied over any array; use matrix...matrix is nothing but a 2D array, so specify the dementions along with what you want your input sliced and what function you want applied
  #'lapply---applies your function and returns a list
  #'sapply---applies function and returns a similified version of whatever return value it gets (aka if every element of your input vector is of length one, then you will get a vector returned)
          #' if everything returned is of the same length and type then you will get a matrix
          #' if its a combination of lengths and types then you will get a list
  #'vapply---This returns a vector of whatever TYPE you SPECIFY; slightly safer than sapply...because you have to specify what you want to get back
  #'mapply---This takes two or more inputs and applies a function to both of them
          #' Hence, you can put in any number of input variables and since this is the case the function has to come first!!!!
  #'tapply---takes an input vector that you want to be grouped in someway, matches it against a grouping vector, and then applies the function based on the grouping

  

#' 4.2.3 Why apply an not aapply
  #' Why use apply families?
  #' BECAUSE THEY ARE FAST
  #' you can write a loop to do the same thing...but that takes time and they are slower to run
 
#' R' is a functional language
#' This means that onces your data are in vector format you can tell it to apply something to all the elements of that vector
    #' It will do so using FAST, INTERNAL, PRE-COMPILED code (bytecode) to do everything much quicker than in pure R
#' This means that you should start approaching your questions perhaps differently
    #' start thinking functionally
    #' break down your problems into smaller elements that can be written as some sort of vector or matrix
    #' Then you can use apply function() and everything will be much faster

#'Tidyvrese' and plyr package
#'avoid these
#' they make it easier to move  things from one type of data to another
#' but this can be computationally expensive and time consuming
#'functions are aapply and dapply  

#'JUST THINK ABOUT YOUR PROBLEM FIRST!!!!!
#'Think about the elements that make up the whole and approach it that way

  
  
#' 4.3 Lambda calculus and parallel execution
  #'  λ-calculus== is a fomalized way of writing mathematical statements about functions
  #'  in λ-calculus, functions are just as reall as the numbers, therefore, they can be manipulated and transformed
  #'  R IS DESIGNED TO OPERATE EXACTLY THIS WAY
  #'  which makes it rediculously fast when you use it right, but super slow when you dont

#' λ functions (sometimes called anonymous functions) --are functions that arent given a names that you can call
#' in R functions are first-class objects--you can treat them and examine them as you can any object (try calling str(ls) to examine ls function, or print (ls) to see its code) 
#' All you have to do to use a "λ function" is just not assign the function to a variable using <-

  
  input<-1:10
  grouping<-rep(letters[1:2], 5)
  tapply(input, grouping, function(x) sd(x)/sqrt(length(x)))
  #       a        b 
  #1.414214 1.414214 
  
  #'Here we just didnt give λ  function a name, but if we did it would be std.err.mean
  #'Because functions are first-class objects that can be manipulated, we can 
        #'pass around functions as if they were objects
        #'use them
        #'and even manupulate those functions

  safe.apply <- function(x, func){
    not.nas <- Negate(is.na(x))(x)
    x[not.nas] <- func(x[not.nas])
    return(x)
  }
  
  safe.apply(c(1,3,5,7,NA,1), function(x) return(x*2))
  
  
  









  ################################################
  ## Exercises ###################################
  ################################################

#1

# replicate is an important function that allows you to quickly generate random numbers. Use it to create
# a dataset of 10 variables, each drawn from a Normal distribution with different means and variances. This
# can be achieved in one line.

replicate.ND <- replicate(n=10, expr = (rnorm(n=10, mean = runif(1, 0, 10), sd=runif(1,0,10))))
replicate.ND
#matrix returned containing the values


#2

mah.summary <- function(x){
  sum.output <- matrix(NA, nrow = ncol(x), ncol = 5)      #preallocating data matrix
  sum.output[,1] <- apply(x, 2, sum)
  sum.output[,2] <- apply(x, 2, mean)
  sum.output[,3] <- apply(x, 2, sd)
  sum.output[,4] <- apply(x, 2, min)
  sum.output[,5] <- apply(x, 2, max)
  colnames(sum.output) <- c("sum", "mean", "std.dev", "minimum", "maximum")
  plot <- barplot(sum.output[,"mean"])
  axis(1, tick=TRUE, pos = -0.2, lty = 1)
  return(noquote(sum.output))
}

mah.summary(replicate.ND)
#how do you make it recognize digits?


#3

sex <- rep(c("male", "female"), times=5)
year <- rep(c("freshman", "sophmore", "junior", "senior", "graduate"), 2)
grade <- rep_len(LETTERS[1:4], length.out=10)
categorical.mat <- matrix(NA, nrow=10, ncol=3)
categorical.mat <- cbind(sex, year, grade)


categ.sum <- function(x){
  if(is.numeric(x)){
    return("Data not categorical!")
  } else{
    length <- apply(x,2, length)
    table.sum <- apply(x, 2, table)
    results <- list(c(length, class, table.sum))    #storing as list because it can handle things of diff length
    return(results)
  }
}

#what can I add to make this more useful...I want a plot but how do I specify what I want plotted???

categ.sum(categorical.mat)
categ.sum(replicate.ND)   #[1] "Data not categorical!" So the if statment is working


#4

summary.stats <- function(x){
  sum_mat <- sapply(Negate(is.numeric)(x))
  mah.summary(sum_mat)
  categ.sum(sum_mat)
}

summary.stats(replicate.ND)
summary.stats(categorical.mat)



# 5. A molecular biologist you owe a favour approaches you with a problem. They have a DNA sequence
# (e.g., ‘ACGATATACGA’) that they need to group into codons (groups of three) and translate into proteins
# (ignoring all complexities of translation and transcription). Write them a function that will take an
# arbitrary input sequence and an arbitrary codon lookup table, and output the translated sequence. Hint:
# expand.grid will help you make a demo lookup table.


#expand.grid
# Create a data frame from all combinations of the supplied vectors or factors. See the description of the return 
# value for precise details of the way this is done.
# we need expand.grid will help make a lookup table


codon.fun <- function(nt.seq, )

















