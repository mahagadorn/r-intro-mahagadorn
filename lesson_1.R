##mahagadorn
##LessonOne
##ProgrammingCourse
##October 19, 2016

#1.1
empty.vector <- logical()
empty.vector
numbers <- c(1,3,5,3)
#the c() concatenates the vectors on length one
#so for this "1", "3", "5", and "3" are all vectors of length one
# c() makes a vector of length four from the four vectors of length one

vector.maths <- numbers*4.5
vector.maths
#runs mathematical operation on the vector "numbers"
#this runs the mathematical on the ENTIRE vector at the same time
#Result
#> vector.maths
    #[1]  4.5 13.5 22.5 13.5

####Vector Subsetting
letters #1
#built-in R vector
    #[1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t"
    #[21] "u" "v" "w" "x" "y" "z"

1:5 #2
#list the numbers 1-5
    #[1] 1 2 3 4 5

letters[1:5] #3
#creates a subset of elements 1-5 within vector "letters"
#> letters[1:5]
    #[1] "a" "b" "c" "d" "e"

x <- 1:26 #4
# saves the numbers 1-26 into a new vector called "x"
x
    #[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26

x < 10 #5
#gives us a list of the values in the vector that are less than 10
    #[1]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE
    #[14] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#so, you can see that values 1-9 are (obviously) less than 10 for the value returned is TRUE
#but values 10-26 are greater than 10 therefore the return is FALSE

letters[x < 10] #6
#using the operator "<" (for less than) we can return a logical vector returning all objects of the vector less than ten
#for this example the return is letters "a"-"i" or objects in the vector 1-9 (objects less than 10)
    #[1] "a" "b" "c" "d" "e" "f" "g" "h" "i"

#Learning how to use the operators
# >, <=, ==^4, !=
letters[x <= 10]
#this is the equivalent returning the elements in the vector "letters" that are less than OR equal to 10
    #shown by the return  [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"

letters[x != letters]
#this is an operator that checks to see if each element of the first vector is equal to the element of the second vector

x != letters
    #[1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    #[18] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#without the subsetting within letters we return "TRUE" and "FALSE" values
#the above return says that all elements of vector "x" are unequal to the elements in vector "letters"

x == letters
#these results are corroborated when using the above operator "=="
# the operator "==" is checking to see if each element of the first vector "x" is equal to the corresponding
#element of the second vector "letters"
#the return... 
    #[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    #[15] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#...says that none of the elements in vector "x" are equal to the corresponding element in the "letters" vector

names(x) <- letters #7
#names(x) is a function used to set the names of an object
#reminder "letters" is a character vector
#here we set the names of the object "x" to the value of "letters"

x #8
    #a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z 
    #1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 
is.vector(x)
    #[1] TRUE
# names(x) <- letters did indeed save x as a vector where the names of the objects in the vector are letters
# the resulting vector has a-z as the names for elements 1-26

x["a"] #9
# this command uses a character vector to subset the newly names vector
    #a 
    #1


##1.2 Multiple dimensions and advanced subsetting
#vectors are uni-dimensional, but matrices are two dimensional
#an array can have as many dimensions as you want
#matrix[row,column]...leave a dimension blank gives you everything in that dimension
my.mat <- matrix(1:25, nrow=5, ncol=5)
#this saves the number sequence 1 through 25 into a matrix
#this matrix has 5 rows and 5 columns

my.mat
    #[,1] [,2] [,3] [,4] [,5]
    #[1,]    1    6   11   16   21
    #[2,]    2    7   12   17   22
    #[3,]    3    8   13   18   23
    #[4,]    4    9   14   19   24
    #[5,]    5   10   15   20   25
#notice that the number sequence is saved going down the columns NOT rows
#In other words, 1:5 is saved down column one, 6:10 column 2, and so on
#therefore, we can see that [2,4] is 12, whereas [4,2] is 9

my.mat[1:5,]
#this is tell R to return every elements in rows 1 through 5
#since no column is specified all elementss from ALL columns will be returned
    #[,1] [,2] [,3] [,4] [,5]
    #[1,]    1    6   11   16   21
    #[2,]    2    7   12   17   22
    #[3,]    3    8   13   18   23
    #[4,]    4    9   14   19   24
    #[5,]    5   10   15   20   25

my.mat[,1:5]
#here we specify all columns but no rows; therefore, all elements will be returned
    #[,1] [,2] [,3] [,4] [,5]
    #[1,]    1    6   11   16   21
    #[2,]    2    7   12   17   22
    #[3,]    3    8   13   18   23
    #[4,]    4    9   14   19   24
    #[5,]    5   10   15   20   25

my.mat[1,3]
#now we are subsetting specifically ROW #1 and COLUMN #3
#note this will not return all of row one and all of column three, but speficially the element corresponsing to location row1 and column3
#this is one element
    #[1] 11

my.mat[-1,]
#the minus sign signifies (not this element(s) or negate this elements(s))
#here we are saying return all elements BUT those in row #1
    #[,1] [,2] [,3] [,4] [,5]
    #[1,]    2    7   12   17   22
    #[2,]    3    8   13   18   23
    #[3,]    4    9   14   19   24
    #[4,]    5   10   15   20   25

my.mat[,-1:-2]
#same concept as described above, except now we are negating columns 1 through 2
#in other words, we want all elements to be returned, except those in columns 1 through 2
    #[,1] [,2] [,3]
    #[1,]   11   16   21
    #[2,]   12   17   22
    #[3,]   13   18   23
    #[4,]   14   19   24
    #[5,]   15   20   25

my.mat[1:2,1:2]
#return elements that correspond to row 1-2 and columns 1-2
#in other words it will return the for elements
#these elements will correspond to [1,1], [1,2], [2,1], [2,2]
    #[,1] [,2]
    #[1,]    1    6
    #[2,]    2    7

##arrays
array(1:8, dim=c(2,2,2))[,,1]

characters <- c("a", "f", "3")
#concatenate the character elements into a character vector called "character"

characters %in% letters
# %in% is an operator that tells a user whether the elements of the vector on its left "characters" is in the vector on its right "letters"
    #[1]  TRUE  TRUE FALSE
#clearly the letters "a" and "f" are in the vector "letters" so TRUE is returned, however, element "3" is not so FALSE is returned

match(characters, letters)
#the match() function tells you where elements in a vector are found in another vector
#so where are the elements in "characters" found in "letters"?
    #[1]  1  6 NA
#"a" is the first letter and "f" is the sixth letter, therefore the position 1 and 6 are returned
#there is no match for 3 in letters, therefore, NA is returned

letters[match(characters, letters)]
    #[1] "a" "f" NA 
#this returns the name of the elements in "letters" that correspond to the locations of where elements in one vector are found in the other

characters[match(letters, characters)]
    # [1] "a" NA  NA  NA  NA  "f" NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA 
    # [22] NA  NA  NA  NA  NA

letters[!characters %in% letters]
    #[1] "c" "f" "i" "l" "o" "r" "u" "x"
# %in% tells a user whether the elements of the vector on its left "characters" is in the vector on its right "letters"
# ! negates a logical


##Compound Data Types 1.3
my.list <- list(n=c(1,3,5), c=c("hello","world"), l=c(TRUE,FALSE,TRUE))
#create list

my.list$n
#subset my list to return only elements of vector "n"
    #[1] 1 3 5

my.list$c
#same as above only subsetting for vector "c" not "n"
    #[1] "hello" "world"

my.list[[3]]
#subsetting for specifically elements in vector#3 in the list
    #[1]  TRUE FALSE  TRUE

my.list[[2]]
#subsetting for elements in vector#2 this time
    #[1] "hello" "world"

my.list[1:2]
#subsetting for vectors 1 through 2 in the list
    #$n
    #[1] 1 3 5

    #$c
    #[1] "hello" "world"

#DataFrames
my.df <- data.frame(n=c(1,3,5), c=c("hello","world","again"), l=c(TRUE,FALSE,TRUE))
#my.df <- data.frame(n=c(1,3,5), c=c("hello","world"), l=c(TRUE,FALSE,TRUE)) wouldn't work because you need the same number of elements in all rows

my.df$n
#subsetting for vector "n"
    #[1] 1 3 5

my.df$c
#subsetting for vector "c"
    #[1] hello world again

my.df[1,]
#subsetting for only elements of the first row in the data frame
    #  n     c    l
    #1 1 hello TRUE

my.df[,2:3]
#subsetting for elements of columns 2:3 in the data frame
    #     c     l
    #1 hello  TRUE
    #2 world FALSE
    #3 again  TRUE

#Factors
is.numeric(1:5)
    #[1] TRUE
    #is.numeric() tells you if the elements of a vector are numeric or integers

as.numeric(c("1","3","5"))
    

as.numeric(c("one","three","five"))
#warning message because NAs introduced by coercion 

dangerous <- factor(c(3, 1, 5))
#creates a vector of possible character states(LEVELS) and an internal data vector that stores what number levels specific elements of the bector represent

levels(dangerous)
#tells us the levels of the vector "dangerous"
#THESE ARE NOT ATOMIC ELEMENTS!!
    #[1] "1" "3" "5"

as.numeric(dangerous)
#!!!!! this is the WRONG way to do this
    #[1] 2 1 3

is.numeric(dangerous)
    #[1] FALSE

as.numeric(as.character(dangerous))
    #[1] 3 1 5
#this made the character vector containing the values "3","1", and "5" and saved then as numerics???


##Functions 1.4
sort(c(1,3,5,1))
#sorts the data in ascending order, decreasing BY DEFAULT is FALSE
    #[1] 1 1 3 5

sort(c(1,3,5,1), decreasing=TRUE)
#sorts the elements by decreasing order since we specified this in the argument
    #[1] 5 3 1 1

sort(c(1,3,5,1), TRUE)
    #[1] 5 3 1 1
#same as the one above this, however, it is always best to name the arguments in your function
#this way there isn't a mistake made in the order of arguments



#Everyday Basics 1.5
#generic functions
#read.fileformat reads in a file and returns a data frame
#write will output spreadsheets into different formats
#plotting will be used a lot
    #it is best to get used to plotting as a formula (i.e plot(y ~ x) not plot(x,y))
    #formulas is what you will be using when running statistical models



#Getting Help 1.6

#?name.of.function-->searches for function
#??search.term-->searches for a specific term

#use help files before emailing
#googling error messages is also a great way to learn what the issue is



#Exercises 1.7

#1. Concatenate c()
#c() means to concatenate
#to concatenate something is to take two or more vectors and joing them together

c(1,2,3)
c(c(1,2,3), c(4,5,6))
  #[1] 1 2 3 4 5 6
#concatenate the individual vectors into two vectors that we ultimately concatenate(join) together
  #have to be of the same type, can't have a logical and then a numeric


#2. cbind()
#combines two matrix-like R objects by columns and rows
#in essense this combines two objects by their columns or their rows
cbindEx <- 










################################################
## Exercises ###################################
################################################

# c - concatenate
#     - takes two (or more) vector and joins them together
c(1, 2, 3)
c(c(1,2,3), c(4,5,6))
#     - they need to be of the same type, though!
c(1,2, "three")


################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."
