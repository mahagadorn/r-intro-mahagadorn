prime <- function(x){
  loop start: potential.factor (index) in (x-1):2 (range):
    store remainder of x divided by potential.factor
  if the remainder is 0:
    return FALSE
  loop end
  return TRUE
}


isPN.fun <- function(x){
  for(i in (x-1):2){
    remd <- x %% i
  if(remd == 0){
    return(FALSE)
    }  
  }
  return(TRUE)
}
  

isPN.fun(7)
isPN.fun(8)
