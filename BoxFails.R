#Box Fails
#Drawing a box
#rect() function???

ImABox <- function{
  xleft <- c()
  
  
  
  
  
}

i <- 4*(0:10)
xleft<- (100 + i)
ybottom <- (300 + i)
xright <- (150 + i)
ytop <- (380 + i)



rect(xleft, ybottom, xright, ytop)
rect(100 + i, 300 + i, 150 + i, 380 + i)

plot(rect(110, 300, 175, 350, density = 5, border = 'red', lty = 2))

rect(110, 300, 175, 350, density = 5, border = 'red', lty = 2)


plot(c(100,200), c(300,450), type="n")




draw_box <- function(height,width){
  cat(paste(replicate(width, "*"), collapse = "")) #This is the top line
  cat("\n") # new line
  for(i in 3:height){
    cat("*", paste(replicate((width-4), " "), collapse = ""), "*", "\n") # draw the sides for middle rows
  }
  cat(paste(replicate(width, "*"), collapse = "")) 
}
draw_box(3,14)


width=5
cat(paste(rep(width, "*")), noquote = 'width'))
ast.vect <- c("*")

paste(ast.vect, collapse = "")

noquote(ast.vect)


astericvector <- c("*")
width=5
height=3
cat(rep(astericvector, times = width))
cat("\n")
cat("*", paste(replicate((width-4), " "), collapse = ""), "*", "\n")
cat(rep(astericvector, times = width-1), "\n")

ast.vectH <- cat(astericvector, paste(rep(astericvector, times = (!width-2), " "), collapse = " "), astericvector, "\n")
ast.vectH
cat(ast.vectH, "\n")

width.min.heigth <- width-height


ImABox <- function(width,height){
  cat(rep(astericvector, times = width)) #saying repeat asteric vector the same number of times as width
  cat("\n")     #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in height){
    cat(astericvector, paste(rep((!width-2)), collapse = ""), astericvector) #something is wrong here
  }
  cat("\n") 
  cat(rep(astericvector, times = width)) #last line
}

ImABox(5,3)

draw_box <- function(height,width){
  cat(paste(replicate(width, "*"), collapse = "")) #This is the top line
  cat("\n") # new line
  for(i in 3:height){
    cat("*", paste(replicate((width-4), " "), collapse = ""), "*", "\n") # draw the sides for middle rows
  }
  cat(paste(replicate(width, "*"), collapse = "")) 
}
draw_box(3,14)


cat(ast.vect, paste(rep(" ", times=(!width-2)), ast.vect))











PlayImABox <- function(width,height){
  ast.vect <- c("*")
  if(height > 3){
    rep(cat(ast.vect, paste(rep(" ", times=(1/2*(width-2)))), ast.vect, "\n"), times=(1/2*(height-3)))
  } else { 
    cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) 
  }
  
  
  
  
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #saying repeat asteric vector the same number of times as width
  cat("\n")     #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in height-2){
    cat(rep(space), times=(height-2)) #something is wrong here
  }
  cat("\n") 
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #last line
}

PlayImABox(6,15)




space <- c(ast.vect, paste(rep(" ", times=(1/2*(width-2))), ast.vect))
space.space <- 
  ast.vect <- c("*")
width=5
height=15





#attemp one
TextBox <- function(width,height,text){
  ast.vect <- c("*")
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #saying repeat asteric vector the same number of times as width
  cat("\n")     #saying to go to the next line, if you don't do this it won't move to the middle section
  for (i in height){
    cat(ast.vect, paste(rep(width-2), collapse = ""), ast.vect, "\n")
    cat(ast.vect, paste(("HEY!!"), collapse = ""), ast.vect, "\n") #something is wrong here
    cat(ast.vect, paste(rep(width-2), collapse = ""), ast.vect, "\n")
  }
  cat("\n") 
  cat(noquote(paste(rep(ast.vect, times = width), collapse = ""))) #last line
}

ImABox(10,10)


#not even close to being that easy



cat(ast.vect, noquote(Lside), text, noquote(Rside), ast.vect)





roomLR <- ((width-2) - (nchar(text))/2) #I think this will count the number of characters???


x <- (((15-2)-9)/2)

x#text=9
#15=width
#*=2
##  /2  divide the whole thing by 2 to account for left an right sides

width=15
text <- c("HeyGirl")


x



roomLR <- (((width-2) - nchar(text))/2)

total <- ((width-2) - nchar(text))


(((width-2)-nchar(text))/2)




