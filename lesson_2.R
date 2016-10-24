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
  
  
  
  