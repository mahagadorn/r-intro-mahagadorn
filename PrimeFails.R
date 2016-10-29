#2. Write a loop that print out only the numbers from 20 to 10 that are even
for(i in 20:10){
  if(i %/% 2) #%% is a modulus or binary special operator token. This is used as an arithmetic token. 
  next
  (print(i))
}

#the %% as described above is a modulus operator that is used to return integer remainders
#This is deferent that %/% which is used to divide by


#3. Write a function that calculates whether a number is a prime number 
#(hint: what does 2 %% 3 give you?)

2 %% 3
#remainder of 2

#divisor=what you are dividing by  2   5
#dividend=number to be divided     3   11
#quotient=whole number result after dividing: number of times the divisor wen into the dividend
#remainder= amount left over after dividing


2%/%3 #0
#quotient of 2 divided by 3=0 becuase 3 doesn't go into it evenly
2%%3 #2
#what is the remainder when 2 is divided by 3

x <- sample(1:1000, 1)
for(x){
  if(!x %% x)
}


for (i in sample(1:1000, 1)){
  if(i %/% i){
    break
  } if(!i %% 1){
    break
  }
  next
  (print(i))
}    
  
n <- sample(1:1000, 1)
PNfun<- function(n) {
  if(n == 2) {
    TRUE
   } else if (any(n %% 2:(num-1)==0)) {
    FALSE
   } next {
    break
   } 
}  
 

###MAH this is not your this was taken as an example from stock
is.prime <- function(n) {
   if (n == 2) {
      TRUE
   } else if (all(n %% 2:(n-1) == 0)) {
      FALSE
   } else { 
      TRUE
   }
}

is.prime(sample(1:1000, 1))
print(n)


PNfun<- function(n) {
  if(n == 2) {
    TRUE
   } else if (any(n %% 2:(n-1)==0)) {
    FALSE
   }
    else {
      break
    }
}





PNfun2 <-function(i){
  if(i %/% i){
    break
  } if(!i %% 1){
    break
  }
  next
  (print(i))
  }
}  


workingprime <- function(n) {
  
  if(sum(n/1:n==n%/%1:n)==2)
      print("prime")
  
}


#break it down
n=7
results<-n/1:n #what this is saying is are the results of the division by 1,2,...,n
#meaning what are the results divisible by up until the number

t=13
resultsT<-t/1:t


n%/%1:n
#the quotient of some number divided by one through itself

n%%1:n

n/1:n==n%/%1:n
#together this is looking at all the numbers from 1 through n
#asking does some number divide by 1 through itself equal the quotient of the same number (one through the same number)

(sum(n/1:n==n%/%1:n)==2)
#sum means if all of the elements are of type integer or logical, then the sum is integer 
#so this is saying are the results of some number divided by one:itself equal to the quotient of one:same number overall equal to two
#aka are the results TRUE for two options only
#these would be equivalent to 1 and the number


PrimeFun <- function(n) {
  x <- n/1:n==n%/%1:n
  if(sum(x)!=2) {
    break
  } else (sum(x)==2) {
   print("PrimeNumber")
  }
}

n=7


  if(sum(n/1:n==n%/%1:n)==2)
      print("prime")


PrimeFun <- function(n) {
  x <- n/1:n==n%/%1:n
  if(sum(x)!=2) {
    break
      } next {
        print("NotPrime") 
  } else { (sum(x)==2)
    print("PrimeNumber")
  }
}



PrimeFun <- function(n){
  for(x) {
    x <- n/1:n==n%/%1:n
  } if (sum(x)==2) {
      print("PrimeNumber!") 
      } break {
  } else {
      print("NotPrime")
  }  
}    
  
 

isPN.Fun <- function(n){
  if (n<2){
    return(FALSE)
     }break{
        print("Warning less than 2")
     }else{
        for(x in n/1:n==n%/%1:n){
          if(sum(x)==2) {
            print("I'm a Prime Number!")
          }else{
            print("I'm Not a Prime Number :(")
      }
    }
  }
}


is.prime <- function(x){
  if(x==2){
    return(TRUE)
  } else{
    if(sum(n/1:n==n%/%1:n)== 2){
    return(TRUE)
    }
  }
}



if(sum(n/1:n==n%/%1:n)==2)
      print("prime")

is.prime <- function(x){
  if(x==2){
    return(TRUE)
  } else if (sum(n/1:n!=n%/%1:n)==2){
    return(FALSE)
  } 
}

is.prime(7)
is.prime(8)




is_prime <- function(num) {
  if (num == 2) {
    TRUE
  } else if (any(num %% 2:(num-1) == 0)) {# see example function of a"any"
    FALSE
  } else { 
    TRUE
  }
}

b <- 37
if(is_prime(b)){
  cat(b, "is prime")
} else {
  cat(b, "is not prime")
}














