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
value <-


