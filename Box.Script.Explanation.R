#MAHagadorn
#Hi Carol...I will attempt to explain how I think I fixed it.
#If it's unclear we can easily talk in class about it on Monday

#So, if you look on line (23) I specified      if(nchar(text) >= width-3)...When I added in the >= and not just > I think it addressed...
#...some of the issues with the Right hand side "*" projecting out too far.  My thought process was (an others should feel free to comment on this)..
#...that if you keep it at just >2 or 3 (accounting for the * on each side) then you don't give the words any "wiggle" room
#in other words, they will but right up to the * on the right side and push it over.
#once I changed that it helped a lot! Although, I am still having some issues

#another change I made to account for this a bit is on lines (34-35) to give it additional wiggle room
# had it subtract width by three hoping to include one extra space between the * and the text
#this worked great UNTIL you get down to the text width being greater that the box width
#hopefully, someone else will read this and have a few suggestions
#hope this helps some
#if it seems as if I made a critical error by doing things as I have described above please let me know!!!
#My best, -MAH


TextBox <- function(width, height, text){
  #Define our vectors....Reminder, you had this built into your loops and they became WAY to chunky! so you removed them and placed them up here
  ast.vect <- c("*")
  roomLR <- (((width-2)-nchar(text))/2) #I think this will count the number of characters???
  RMLines <- height-3
  Top <- RMLines/2
  Bottom <- RMLines/2
  #saying repeat asteric vector the same number of times as width    #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in width){
    if(nchar(text) >= width-4) {
      print("Long winded? Your text has too many characters!")
    } else{
      #making vectors
      space <- c(ast.vect, paste(rep("", times=(width-3))), ast.vect, "\n")
      Lside <- rep("", times= (((width-3)-nchar(text))/2))
      Rside <- rep("", times= round(((width-3)-nchar(text))/3))
      textline <- c(ast.vect, Lside, text, Rside, ast.vect, "\n")
      #Top Line of Astericks  
      cat((noquote(paste(rep(ast.vect, times = width), collapse = ""))), "\n")
      #Start loop for spaced
      for(i in 1:Top){
        cat(space)
      }
      cat(textline)
      #Another loop for Space
      for(i in 1:Bottom){
        cat(space)
      }
      #Bottom Line of Astericks  
      cat((noquote(paste(rep(ast.vect, times = width), collapse = ""))), "\n")
    }
  }
}


TextBox(26, 13, text="Keep Calm, Code On!")
