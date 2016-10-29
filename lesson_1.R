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





################################################
## Exercises ###################################
################################################



#1. Concatenate c()
#c() means to concatenate
#to concatenate something is to take two or more vectors and joing them together

c(1,2,3)
c(c(1,2,3), c(4,5,6))
  #[1] 1 2 3 4 5 6
#concatenate the individual vectors into two vectors that we ultimately concatenate(join) together
  #have to be of the same type, can't have a logical and then a numeric


#2. cbind()
#combines vectors by rows and columns
#in essense this combines two objects by their columns or their rows

num <- 1:5
lets <- c("a", "b", "c", "d", "e")

cbindEx <- cbind(num, lets)
cbindEx

#      num lets
# [1,] "1" "a" 
# [2,] "2" "b" 
# [3,] "3" "c" 
# [4,] "4" "d" 
# [5,] "5" "e" 

#3.a col
#col(x) is a function that returns a matrix of integers indicating their column number in a matrix-like object
#a matrix-like object is require here--> one that is dim(x)=2

#3.b row
# function returns a matrix of integers indicating their row number in a matrix-like object
#needs to be a matrix like object

rctest.df <- data.frame(date=c(8,20,2015), I.Do=c("We","Got","Married"), Yay=c(TRUE,TRUE,TRUE))
rctest.df

#   date    I.Do  Yay
# 1    8      We TRUE
# 2   20     Got TRUE
# 3 2015 Married TRUE

rctest.df[,2] #[1] We      Got     Married
rctest.df[2,2] #Got
rctest.df[1,] #1    8   We TRUE


#4. cut
#cut(): divides a range of vector (x) into intervalces and codes the values in x according to which interval they fall
#lots of cool arguments: see ?cut to see all the options
#when to actually use cut(): when you want to break up a continous variable such as "age" or year into a categorical var
#or maybe you use want to classify a categorical variable (year) into larger bins

#let's say we have rain data for 2000 to 2010 (denoted 1-10 for easy)
year <- c(0:10)
rain <- seq(50,100, by=5)
cutmeRain.df <-data.frame(year,rain)

#now we can use the cute to may year a factor
yearFact <- cut(as.numeric(as.character(cutmeRain.df$year)), breaks = 2)
table(yearFact)

#5. diff
#returns suitably lagged and iterated differences
#in english: the function calculates the differences between all consecutive values of a vector

randonumbs <- c(1,5,8,-1,12,13)
diff(randonumbs)
#[1]  4  3 -9 13  1
#aka 5-1=4, 8-5=3, -1-8=-9,.....

#6. dim
#tells you the dimensions of an object(aka matrix, array, df)
#or it can set the dimensions of something

dim(rctest.df)
#[1] 3 3
rctest.df
#  date    I.Do  Yay
# 1    8      We TRUE
# 2   20     Got TRUE
# 3 2015 Married TRUE

#7. rownames, colname, names
#colname: retrieve or set column names in a matrix-like object
#rowname: retrieve or set row names in a matrix-like object
#names: to get or set names

life <- matrix(c("past", "present", "boo"))
bugs <-cbind(c("beetles", "bees", "flies"))
ahh<-c(1,2,3)

coolmat <- cbind(bugs, ahh)
colnames(coolmat) <- c("bugs", "ahh")
rownames(coolmat) <-life
coolmat <- as.data.frame(coolmat)
coolmat
names(coolmat)


#8. expand.grid
#create a data frame from all combinations of supplied vectors or factors
#DF containing one row for each combination of supplied factor

a <- seq(0, 1000, length.out = 50)
b <- seq(-1,1, length.out = 5)
exp1 <- expand.grid(x = x, y = y)
exp2 <- expand.grid(x = x, y = y, KEEP.OUT.ATTRS = TRUE)

#tinker around more with this function

#9. eigen, %*%, lower.tri, diag

#eigen: computes the eigen values and eigenvectors of numeric or complex matrices
eigenvals <- eigen(cbind(c(1,5), c(-2,10)))
eigenvals

# $values
# [1] 8.701562 2.298438
# 
# $vectors
#            [,1]       [,2]
# [1,]  0.2513506 -0.8387428
# [2,] -0.9678961  0.5445277

#%*%: arithmetic operator
mult<- (5 %*% 4)
mult
# [,1]
# [1,]   20

#do it bigger
c <- seq(10,100, by=10)
d <- seq(1,10)

multbig <-c %*% d
print(multbig)

#lower.tri & lower.tri: returns a matrix of logicals the same size of a give matrix with entries True in lower or upper triangle
lower.tri(c)
upper.tri(c)

#diag: extract or replace the diagonal of a matrix, or construct a diagnal matrix
dc <- diag(c)
print(dc)
#that is awesome
#       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
#  [1,]   10    0    0    0    0    0    0    0    0     0
#  [2,]    0   20    0    0    0    0    0    0    0     0
#  [3,]    0    0   30    0    0    0    0    0    0     0
#  [4,]    0    0    0   40    0    0    0    0    0     0
#  [5,]    0    0    0    0   50    0    0    0    0     0
#  [6,]    0    0    0    0    0   60    0    0    0     0
#  [7,]    0    0    0    0    0    0   70    0    0     0
#  [8,]    0    0    0    0    0    0    0   80    0     0
#  [9,]    0    0    0    0    0    0    0    0   90     0
# [10,]    0    0    0    0    0    0    0    0    0   100

#10 gl
#gl(): generate factors by specifying the fattern of their levels

gl(n=2, k=8, labels = c("control", "Treatment")) 
#n is integer giving number of levels
#k is integer giving number of replications
#labels is obvious

gl(n=2, k=1, length=20) #alternating 1s and 2

#11 identical
#identical()= the safe and reliable way to test if two objects are exactly the same

e <- seq(1,10, by=2)
f <- seq(1,10, by=2)
g <- seq(1,10, by=3)

identical(e,f)
#[1] TRUE
identical(e,g)
#[1] FALSE

#12 image
#simply it's to plot an image
#not so simply, creates a grid of colored or gray-scaled rectangles with colors corresponsing to the values
# x and y can't be vector, must be matrix like
z=1:8
image(e,g)

x <- 10*(1:nrow(volcano))
y <- 10*(1:ncol(volcano))
image(x, y, volcano, col = terrain.colors(100), axes = FALSE)


#13 library
#use this all the time
#loads a package that you want to use at a give time
#make sure that you have installed the package first

install.packages("ggplot2")
library("ggplot2")

#14 length
#tells you the length of a given vector
#can also subset a df, matrix, etc.

length(a) #a already defined above
#[1] 50 so there are 50 elements in vector a

length(coolmat$bugs)
#[1] 3


#15 jitter
#add a small amount of noise to a numeric vector
print(c)
#[1]  10  20  30  40  50  60  70  80  90 100
jitc<- jitter(c)
print(jitc)
# [1]  9.898918 18.996909 29.908385 41.690786 51.285662 61.446628
# [7] 68.987767 80.149588 90.588572 98.248299



#16 ls
#ls can be used to give the names of the object that are in a specific location

#using pwd:    /Users/Mal/documents/ProgrammingClass/r-intro-mahagadorn
#return=
  #Programming for Biologists - Oct_11_2016.pdf
  #Programming for Biologists - Oct_19_2016.pdf
  #lesson2classnotes.R
  #lesson_1.R

#ls -lh gives you alot more information--permissions, file size, date, etc
  # -rw-r--r--@ 1 Mal  staff   432K Oct 19 10:22 Programming for Biologists - Oct_11_2016.pdf
  # -rw-r--r--@ 1 Mal  staff   451K Oct 19 11:06 Programming for Biologists - Oct_19_2016.pdf
  # -rw-r--r--  1 Mal  staff   717B Oct 25 21:00 lesson2classnotes.R
  # -rw-r--r--  1 Mal  staff    17K Oct 26 01:54 lesson_1.R

#rm(list=ls()): removes all the variables from a specified workspace


#17 mean, median, max, min
#they pretty much do what they say
#mean(): gives you the average of a R object. Vector or you can subset (i think)
#median(): calculates the sample median
#max(): give you the highest number
#min(): give your the lowest number

#lets use c again
mean(c)  #[1] 55
median(c)  #[1] 55
max(c)  #[1] 100
min(c)  #[1] 10


#18 paste
#paste(): concatenates a vector after it converts it to a character vector
#arguments are converted to characters strings
#ultimately you get an output of the character string
#not in table format or anything pretty

paste(c)
    #[1] "10"  "20"  "30"  "40"  "50"  "60"  "70"  "80"  "90"  "100"


#19 read.csv, read.table, write.csv, write.table
#read.csv and read.table==very similar except for arguments
    #in general, both functions are used to read in tabular(table) data into R
    #tabular read in is used to create a data frame
    #R documentation states that read.csv and read.table are identical except of the defaults
    #they are intended for reading in 'comma seperated files'
    #looks like you have some extra arguments/freedom using read.table
      #can specify commas and decimals
#write.csv and write.table
    #write.table: prints the argument x(which is just the object to be written) to a file
    #the argument will be converted to a dataframe if it isnt one or a matrix
    #this function provides a 'convenience wrapper' for writing CSV files
    #the wrappers are deliberately inflexible, as they are designed to ensure the correct conventions are used to write a valid file
#write.csv is like write.table except by default there are not column names for a column of rows


#20 rnorm, pnorm, dnorm, qnorm
#rnorm(): for rnorm(n), rnorm() will generate n number of random observations from a normal distribution with the option 
    #...specifying a mean or a sd.  By default the mean and sd are 0 and 1, respectively  
#dnorm(): gives you the density of a vector of quantiles for the normal distribution with mean equal to specified mean and 
    #...standard deviation equal to specified sd.
#pnorm(): gives you a distribution function of a vector of quantiles for the normal distribution with mean equal to specified mean and 
    #...standard deviation equal to specified sd. 
#qnorm() gives you a quantile function for a vector of probabilites for the normal distribution with mean equal to specified mean and 
    #...standard deviation equal to specified sd.


rnorm(3)
#[1]  0.5409425  0.2848835 -1.0784023
dnorm(c)
# [1]  7.694599e-23  5.520948e-88 1.473646e-196  0.000000e+00
#  [5]  0.000000e+00  0.000000e+00  0.000000e+00  0.000000e+00
#  [9]  0.000000e+00  0.000000e+00

probvec <- seq(0.5,0.95, by=.05)
qnorm(probvec)
 # [1] 0.0000000 0.1256613 0.2533471 0.3853205 0.5244005 0.6744898
 # [7] 0.8416212 1.0364334 1.2815516 1.6448536

pnorm(probvec)
 # [1] 0.6914625 0.7088403 0.7257469 0.7421539 0.7580363 0.7733726
 # [7] 0.7881446 0.8023375 0.8159399 0.8289439


#21 runif, rpois
#runif 
  #is a function that provides information about a uniform distribution
  #specifically, runif generates the random deviates
  #runif won't generate any extreme values unless max = min or max-min is small compared
    #...to the overall min

runif(12, min=3, max=7)
   # [1] 3.536333 5.571975 4.729899 6.693991 3.661862 6.261990 6.680269
   # [8] 3.461964 3.931724 3.186388 5.912445 3.982177

#rpois
  #generates the random deviates for the Poisson distribution
  #a particular lamda has to be specified
  #for rpois you have to specify n= number of random variables to return
  #see homework assigment for A.Cutlers class
  #whole assigment as based on Poisson distributions
  
rpois(n=15, lambda = 100)
  #[1] 115  93  83 101  99  95 102 121  98 100 119  97 101  90  92


#22 Rank
#rank(): returns the sample tanks of the values in a vector
  #note...equal values and missing values can be handled in multiple ways
  #input: is a numeric, complex, character, or logical vector
  #if all the components are different (and no NAs), then the ranks will be well defined
  #you have multipe tie.methods-->allows you to specify how the ties (same number) are treated

rank(c)
# [1]  1  2  3  4  5  6  7  8  9 10


#23 sort, rank, order
#sort()
  #sorts the values in a vector. Default is decreasing=FALSE (so increasing in size)
sort(c)
  #[1]  10  20  30  40  50  60  70  80  90 100

#rank is already described above

#order()
  #provides you with the order of the values
order(c)
  # [1]  1  2  3  4  5  6  7  8  9 10

#difference between rank() and order()
  #rank(): returns a vector with the "rank" of each value. the number in the first position is the 9th lowest
  #order(): returns the indices that would put the initial vector x in order

#24 outer()
  #this function applies a function to two different arrays
  
h <- seq(1,20, by=2)
length(h)
i <- seq(21,40, by=2)
length(i)

outer(h,i, FUN = "^")
#output huge so didn't paste. See what it looks like by just...


#25 rep()
#rep() replicates the values in x
rep(c, 3)
# [1]  10  20  30  40  50  60  70  80  90 100  10
# [12]  20  30  40  50  60  70  80  90 100  10  20
# [23]  30  40  50  60  70  80  90 100


#26 rowSum, colSum
#rowSum (R documentation had it as rowsum)
  #this function computes column sums across rows of a numerica matrix like object
  #MAH this would be great for your research data frames for MS analysis
    #sum across species(rows) to get a total of that species among all farms (columns)
#colSum: enables you to form row and columns sums and means for numeric arrays (or DFs)

#examples of these functions have been completed in DBeco spreadsheet
#didn't want the data publically available :)


#27 seq()
#LOVE THIS FUNCTION!!!
#allows you to generate a regular sequence of some value
#see examples below

seq(1:5) #[1] 1 2 3 4 5
seq(0, 16, by=2) #[1]  0  2  4  6  8 10 12 14 16



#28 source
#source() is used for sourcing scripts in R
#aka scripts that that you wrote seperately but want to "retrieve" it on the command line
#allows R to perform several command one after the other without waiting for more instructions



#29 which, which.min, which.max
#which()
    #this function takes a logical vector as an argument
    #used for counting the number of elements in a vector (for some specific variable)

test <- c("A", "B", "A", "B", "A")
which(test=="A")
#[1] 1 3 5
#great for large vectors


#which.min()  &   which.max()
    #gives your the location of the first(minimum) or maximum of a numeric (or logical) vector

test.number <- seq(1:15)
which.max(test.number)  #[1] 15
which.min(test.number)  #[1] 1

which.max(test.number >5) #[1] 6


#30  setdiff, intersect, union
#these were awesome functions
#you used each of these in your microbiome analysis to tease out the OTUs shared and diff

vec.1 <- 1:25
vec.2 <-20:30

#setdiff: tells you the numbers that are different between two vectors
setdiff(vec.1, vec.2)
# [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
# [16] 16 17 18 19

vec.3 <- 1:5
vec.4 <-4:6
setdiff(vec.3, vec.4)   #[1] 1 2 3


#intersect: tells you what numbers or elements are in common between two vectors
intersect(vec.1, vec.2)  #[1] 20 21 22 23 24 25


#union: is everything in the two sets taken together. So A+B
union(vec.4, vec.3)
#so the values in vector 4 + 3



#31 table
#table is used to cross-classify factors to build a contingency table of counts at each combination of factor levels
    #creates tabular results of categorical variables

#https://www.r-bloggers.com/r-function-of-the-day-table/
#go here for a great example

## generate data for medical example
clinical.trial <-data.frame(patient = 1:100,
             age = rnorm(100, mean = 60, sd = 6),
             treatment = gl(2, 50,
             labels = c("Treatment", "Control")),
             center = sample(paste("Center", LETTERS[1:5]), 100, replace = TRUE))

is.na(clinical.trial$age) <- sample(1:100, 20)
summary(clinical.trial)


table(clinical.trial$center)
# Center A Center B Center C Center D Center E 
# 25       14       26       18       17 



#32 with()
#this allows you to use a data frame without having to continuously subset using the $
#generic function that evaluates an expresion in a local environment





################################################
#par functions
    #par is a function that can be used to set graphical parameters
    #they can be set by specifying them as arguments to par in XX=value form or by passing them as a lit of tagged values
#there are a riduculous amount of parameters that can be passed to par
#listed below are a few that will be very useful

    #1 cex   options
      #this is part of a family so it has alot of options
      #cex is a numerical value that indicated how much you want your plotting text and symbols
          #...to be magnified compared to the defult
      # you can adjust axis magnification (cex.axis), label magnification (cex.label), and titles

    #2 col
      #this will pretty much be used every time that you plot something
      #it also comes with multiple options col.axis, col.label
      #sure beats having to do it in excel :)
      #default for all appear to be black

    #3 







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
