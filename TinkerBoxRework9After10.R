###9
#going back to rework


#function
ImABox <- function(width,height){
  ast.vect <- c("*")
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #saying repeat asteric vector the same number of times as width
  cat("\n")     #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in width){
    cat(ast.vect, paste(rep(" ", times=(1/2*(width-2)))), ast.vect) #something is wrong here
  }
  cat("\n") 
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #last line
}

ImABox(5,3)



ImABox <- function(width,height){
  ast.vect <- c("*")
  RMLines <- height-3
  Top <- RMLines/2
  Bottom <- RMLines/2
  space <- c(ast.vect, paste(rep("", times=(width-3))), ast.vect, "\n")
  Lside <- rep("", times= (((width-3)-nchar(text))/2))
  Rside <- rep("", times= (((width-3)-nchar(text))/2))
  textline <- c(ast.vect, Lside, text, Rside, ast.vect, "\n")
  
  for (i in widht){
    if(height <= 3){
      cat(noquote(paste(rep(ast.vect, times = width), collapse = "")))
      cat("\n")
      } for (j in width){
        cat(ast.vect, paste(rep(" ", times=(1/2*(width-2)))), ast.vect) #something is wrong here
    }
    cat("\n") 
    cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #last line
  }
    
    
    
    
  }



}

################################################################
################################################################
################################################################



#10 
TextBox <- function(width, height, text){
  #Define our vectors....Reminder, you had this built into your loops and they became WAY to chunky! so you removed them and placed them up here
  ast.vect <- c("*")
  roomLR <- (((width-2)-nchar(text))/2) #I think this will count the number of characters???
  RMLines <- height-3
  Top <- RMLines/2
  Bottom <- RMLines/2
  
  
  #saying repeat asteric vector the same number of times as width    #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in width){
    if(nchar(text) >= width-3) {
      print("Long winded? Your text has too many characters!")
    } else{
      #making vectors
      space <- c(ast.vect, paste(rep("", times=(width-3))), ast.vect, "\n")
      Lside <- rep("", times= (((width-3)-nchar(text))/2))
      Rside <- rep("", times= (((width-3)-nchar(text))/2))
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


TextBox(23, 13, text="Keep Calm, Code On!")