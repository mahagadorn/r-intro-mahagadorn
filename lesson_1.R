##mahagadorn
##LessonOne
##ProgrammingCourse
##October 19, 2016


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
