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



  
  